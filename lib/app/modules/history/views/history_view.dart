// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
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
                          const Text(
                            "ຊື່ : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            historyList.bookingPayment.courtBooking.fullName,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "ເບີໂທ : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            historyList.bookingPayment.courtBooking.phone,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "ຄອດ : ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            historyList.bookingPayment.courtBooking.courtNumber,
                          ),
                        ],
                      ),
                      const Divider(),
                      const Text(
                        '# ໄລຍະເວລາການນຳໃຊ້ຄອດ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      ...historyList.courtAvailable.durationTime.map((time) => Text(' - $time .')).toList(),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          const Text(
                            'ວັນທີ່ຈ່າຍເງິນ: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                DateFormat('yyyy-MM-dd').format(
                                  DateTime.parse(historyList.bookingPayment.date),
                                ),
                              ),
                              const SizedBox(width: 8),
                              Text(historyList.bookingPayment.paymentTime)
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            'ລາຄາລວມ: ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            NumberFormatter.paymentFormatPriceKip(historyList.courtAvailable.allTotalAmount),
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
                child: const Center(
                  child: Text("ບໍ່ມີຂໍ້ມູນ"),
                ),
              ),
            ],
          ),
          onLoading: SizedBox(
            height: Get.height * 0.6,
            width: Get.width,
            child: const Center(
              child: CircularProgressIndicator(color: Colors.green),
            ),
          ),
          onError: (error) => ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              SizedBox(
                height: Get.height * 0.6,
                width: Get.width,
                child: const Center(
                  child: Text("ມີບາງຢ່າງຜິດພາດ"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
