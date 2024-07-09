import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  const BookingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BookingController bookingController = Get.put(BookingController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'ປະຫວັດການຈອງ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
        actions: [
          Obx(
            () => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Text(
                  'ຈຳນວນ: ${bookingController.bookingList.length}',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () => bookingController.fetchBookingHistory(),
        child: bookingController.obx(
          (bookingList) => ListView.builder(
            itemCount: controller.bookingList.length,
            itemBuilder: (context, index) {
              final historyList = controller.bookingList[index];
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
                              DateTime.parse(historyList.courtBooking.createdAt),
                            ),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('ຊື່:'),
                          Text(
                            ' ${historyList.courtBooking.fullName}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('ເບີໂທ:'),
                          Text(
                            ' ${historyList.courtBooking.phone}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text('ຄອດ:'),
                          Text(
                            ' ${historyList.courtBooking.courtNumber}',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const Divider(),
                      ...historyList.courtBooking.court.map(
                        (courtModel) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ວັນທີ່ : ${courtModel.date}",
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              ...courtModel.durationTime.map((timeSlot) {
                                return Text(
                                  "- $timeSlot.",
                                  style: const TextStyle(color: Colors.grey),
                                );
                              }).toList(),
                            ],
                          );
                        },
                      ).toList(),
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
