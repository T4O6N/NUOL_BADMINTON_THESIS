// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:nuol_badminton_thesis/app/constants/lottie_constants.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';

import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final HistoryController historyController = Get.put(HistoryController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ປະຫວັດການຊຳລະເງິນ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'ຈຳນວນ: ${historyController.paymentList.length}',
                ),
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => historyController.fetchPaymentHistory(),
        child: historyController.obx(
          (paymentList) => ListView.builder(
            itemCount: controller.paymentList.length,
            itemBuilder: (context, index) {
              final historyList = controller.paymentList[index];
              return Card(
                margin: const EdgeInsets.all(8),
                elevation: 4, // Change this
                shadowColor: Colors.green,
                color: Colors.white,
                child: ListTile(
                  // title: Text('ຊື່: ${historyList.courtBooking.full_name}'),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text('ວັນທີ່ຈອງ: '),
                          Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(
                              DateTime.parse(historyList.createdAt),
                            ),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     const Text('ຊື່:'),
                      //     Text(
                      //       ' ${historyList.courtBooking.fullName}',
                      //       style: const TextStyle(fontWeight: FontWeight.bold),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     const Text('ເບີໂທ:'),
                      //     Text(
                      //       ' ${historyList.courtBooking.phone}',
                      //       style: const TextStyle(fontWeight: FontWeight.bold),
                      //     ),
                      //   ],
                      // ),
                      // Row(
                      //   children: [
                      //     const Text('ຄອດ:'),
                      //     Text(
                      //       ' ${historyList.courtBooking.courtNumber}',
                      //       style: const TextStyle(fontWeight: FontWeight.bold),
                      //     ),
                      //   ],
                      // ),
                      const Divider(),

                      Row(
                        children: [
                          const Text('ວັນທີ່ການໃຊ້ຄອດ: '),
                          Text(
                            DateFormat('yyyy-MM-dd HH:mm').format(
                              DateTime.parse(historyList.courtAvailable.date),
                            ),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),

                      // Text(
                      //   'ວັນທີ່ຈອງ: ${DateFormat('yyyy-MM-dd HH:mm').format(
                      //     DateTime.parse(historyList.courtBooking.created_at),
                      //   )}',
                      // ),
                      const Text('ໄລຍະເວລາການນຳໃຊ້ຄອດ:'),
                      ...historyList.courtAvailable.durationTime.map((time) => Text(' - $time .')).toList(),
                      const Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('ລາຄາລວມ: '),
                          Text(
                            NumberFormatter.formatPriceKip(historyList.courtAvailable.allTotalAmount),
                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ],
                      ),
                    ],
                  ),
                  onTap: () {},
                ),
              );
            },
          ),
          onEmpty: ListView(
            children: [
              SizedBox(
                height: Get.height * 0.6,
                width: Get.width,
                child: Center(
                  child: LottieBuilder.asset(LottieConstants.empty),
                ),
              ),
            ],
          ),
          onLoading: SizedBox(
            height: Get.height * 0.6,
            width: Get.width,
            child: Center(
              child: CircularProgressIndicator(color: Colors.orange.withOpacity(0.2)),
            ),
          ),
          onError: (error) => ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: Get.height * 0.6,
                width: Get.width,
                child: Center(
                  child: LottieBuilder.asset(LottieConstants.empty),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
