import 'package:nuol_badminton_thesis/app/modules/owner/model/court_use.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/sale_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Chart extends StatefulWidget {
  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
}

class _ChartState extends State<Chart> {
  List<SalesData> data = [
    SalesData('A', 1),
    SalesData('B', 2),
    SalesData('C', 4),
    SalesData('D', 32),
    SalesData('E', 40),
    SalesData('F', 40),
    SalesData('G', 40),
    SalesData('H', 40),
    SalesData('I', 40),
    SalesData('J', 40),
  ];
  List<CourtUse> courtUse = [
    CourtUse('Monday', 1),
    CourtUse('Tuesday', 2),
    CourtUse('Wednesday', 4),
    CourtUse('Thursday', 2),
    CourtUse('Friday', 0),
    CourtUse('Saturday', 10),
    CourtUse('Sunday', 0),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SfCircularChart(
              title: ChartTitle(text: 'ລາຍງານການໃຊ້ຄອດປະຈຳອາທິດ'),
              legend: Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <DoughnutSeries<SalesData, String>>[
                DoughnutSeries<SalesData, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: data,
                  xValueMapper: (SalesData sales, _) => sales.year,
                  yValueMapper: (SalesData sales, _) => sales.sales,
                  name: 'Sales',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              thickness: 8,
            ),
            SfCircularChart(
              title: ChartTitle(text: 'ລາຍງານລາຍຮັບປະຈຳວັນ/ອາທິດ'),
              legend: Legend(isVisible: true),
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <PieSeries<CourtUse, String>>[
                PieSeries<CourtUse, String>(
                  explode: true,
                  explodeIndex: 0,
                  dataSource: courtUse,
                  xValueMapper: (CourtUse sales, _) => sales.day,
                  yValueMapper: (CourtUse sales, _) => sales.use,
                  name: 'Court Used',
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                )
              ],
            ),
            // Expanded(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     //Initialize the spark charts widget
            //     child: SfSparkLineChart.custom(
            //       //Enable the trackball
            //       trackball: const SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
            //       //Enable marker
            //       marker: const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
            //       //Enable data label
            //       labelDisplayMode: SparkChartLabelDisplayMode.all,
            //       xValueMapper: (int index) => data[index].year,
            //       yValueMapper: (int index) => data[index].sales,
            //       dataCount: 5,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
