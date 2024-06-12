import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/widget/chart.dart';

import '../controllers/owner_controller.dart';

class OwnerView extends GetView<OwnerController> {
  const OwnerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // OwnerController chartController = Get.put(OwnerController());
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          ' Flutter chart',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      // body: Column(
      //   children: [
      //     Obx(() {
      //       return SfCartesianChart(
      //         primaryXAxis: const CategoryAxis(),
      //         title: const ChartTitle(text: 'Half yearly sales analysis'),
      //         legend: const Legend(isVisible: true),
      //         tooltipBehavior: TooltipBehavior(enable: true),
      //         series: <CartesianSeries<SalesData, String>>[
      //           LineSeries<SalesData, String>(
      //             dataSource: chartController.salesData,
      //             xValueMapper: (SalesData sales, _) => sales.year,
      //             yValueMapper: (SalesData sales, _) => sales.sales,
      //             name: 'Sales',
      //             dataLabelSettings: const DataLabelSettings(isVisible: true),
      //           )
      //         ],
      //       );
      //     }),
      //     Expanded(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Obx(() {
      //           return SfSparkLineChart.custom(
      //             trackball: const SparkChartTrackball(activationMode: SparkChartActivationMode.tap),
      //             marker: const SparkChartMarker(displayMode: SparkChartMarkerDisplayMode.all),
      //             labelDisplayMode: SparkChartLabelDisplayMode.all,
      //             xValueMapper: (int index) => chartController.salesData[index].year,
      //             yValueMapper: (int index) => chartController.salesData[index].sales,
      //             dataCount: chartController.salesData.length,
      //           );
      //         }),
      //       ),
      //     ),
      //   ],
      // ),
      body: const Chart(),
    );
  }
}
