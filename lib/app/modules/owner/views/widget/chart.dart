import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_dashboard_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard/court_usage_model.dart';
import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner_dashboard_income_model/day_income.dart';
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
                      ? const Center(child: Text('ກຳລັງໂຫລດ...'))
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
                                  xValueMapper: (CourtUsageModel sales, _) => sales.courtUsed,
                                  yValueMapper: (CourtUsageModel sales, _) => sales.bookingCount,
                                  name: 'Sales',
                                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
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
                              series: <PieSeries<DayIncome, String>>[
                                PieSeries<DayIncome, String>(
                                  explode: true,
                                  explodeIndex: 0,
                                  dataSource: ownerDashboardController.weeklyIncomeList,
                                  xValueMapper: (DayIncome sales, _) => sales.day,
                                  yValueMapper: (DayIncome sales, _) => sales.income,
                                  name: 'Court Used',
                                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                                )
                              ],
                            ),
                            const SizedBox(height: 10),
                            // const Text(
                            //   'Weekly Income Summary',
                            //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            // ),
                            // Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: Column(
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: ownerDashboardController.weeklyIncomeList.map((income) {
                            //       return Text('${income.day} : ${NumberFormatter.formatPriceKip(income.incomeAmount)}');
                            //     }).toList(),
                            //   ),
                            // ),
                            const SizedBox(height: 10),

                            Obx(() {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'ລວມລາຍຮັບປະຈຳອາທິດ: ',
                                    style: TextStyle(fontSize: 20),
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
