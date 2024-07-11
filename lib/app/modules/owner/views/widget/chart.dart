import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/court_usage_model.dart';
import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/weekly_income_model.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatelessWidget {
  Chart({super.key});
  final OwnerDashboard ownerDashboardController = Get.put(OwnerDashboard());

  Future<void> _refreshData() async {
    await ownerDashboardController.fetchCourtUsage();
    await ownerDashboardController.fetchWeeklyIncome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Obx(() {
                  return ownerDashboardController.courtUsageList.isEmpty
                      ? const Center(child: Text('No court usage data available'))
                      : Column(
                          children: [
                            SfCircularChart(
                              title: ChartTitle(text: 'ລາຍງານການໃຊ້ຄອດປະຈຳອາທິດ'),
                              legend: Legend(isVisible: true),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <DoughnutSeries<CourtUsageModel, String>>[
                                DoughnutSeries<CourtUsageModel, String>(
                                  explode: true,
                                  explodeIndex: 0,
                                  dataSource: ownerDashboardController.courtUsageList,
                                  xValueMapper: (CourtUsageModel sales, _) => sales.courtNumber,
                                  yValueMapper: (CourtUsageModel sales, _) => sales.bookingCount,
                                  name: 'Sales',
                                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Court Usage Summary',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: ownerDashboardController.courtUsageList.map((courtUsage) {
                                  return Text('${courtUsage.courtNumber} : ${courtUsage.bookingCount}');
                                }).toList(),
                              ),
                            ),
                          ],
                        );
                }),
                const SizedBox(height: 10),
                const Divider(thickness: 8),
                Obx(() {
                  return ownerDashboardController.weeklyIncomeList.isEmpty
                      ? const Center(child: Text('No weekly income data available'))
                      : Column(
                          children: [
                            SfCircularChart(
                              title: ChartTitle(text: 'ລາຍງານລາຍຮັບປະຈຳວັນ/ອາທິດ'),
                              legend: Legend(isVisible: true),
                              tooltipBehavior: TooltipBehavior(enable: true),
                              series: <PieSeries<WeeklyIncomeModel, String>>[
                                PieSeries<WeeklyIncomeModel, String>(
                                  explode: true,
                                  explodeIndex: 0,
                                  dataSource: ownerDashboardController.weeklyIncomeList,
                                  xValueMapper: (WeeklyIncomeModel sales, _) => sales.day,
                                  yValueMapper: (WeeklyIncomeModel sales, _) => sales.incomeAmount,
                                  name: 'Court Used',
                                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Weekly Income Summary',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: ownerDashboardController.weeklyIncomeList.map((income) {
                                  return Text('${income.day} : ${NumberFormatter.formatPriceKip(income.incomeAmount)}');
                                }).toList(),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Obx(() {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text(
                                    'ລວມລາຍຮັບປະຈຳອາທິດ: ',
                                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    NumberFormatter.formatPriceKip(ownerDashboardController.totalWeeklyIncome.value),
                                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),
                                  ),
                                ],
                              );
                            }),
                          ],
                        );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
