import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/controllers/admin_dashboard_controller.dart';

class BookingDailyHistoryView extends StatelessWidget {
  final AdminDashboardController controller = Get.put(AdminDashboardController());

  BookingDailyHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ປະຫວັດການຈອງປະຈຳວັນ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.fetchBookingDailyHistory(),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.bookingHistoryList.isEmpty) {
          return const Center(child: Text('ບໍ່ມີປະຫວັດການຈອງ'));
        }
        return RefreshIndicator(
          onRefresh: () => controller.fetchBookingDailyHistory(),
          child: ListView.builder(
            itemCount: controller.bookingHistoryList.length,
            itemBuilder: (context, index) {
              final booking = controller.bookingHistoryList[index];
              return Card(
                elevation: 4,
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person, color: Colors.blueAccent),
                          const SizedBox(width: 8),
                          Text(
                            booking.courtBooking.fullName,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.phone, color: Colors.green),
                          const SizedBox(width: 8),
                          Text('ເບີໂທ: ${booking.courtBooking.phone}'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.location_on, color: Colors.orange),
                          const SizedBox(width: 8),
                          Text('ເລກທີເດີ່ນ: ${booking.courtBooking.courtNumber}'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.payment, color: Colors.purple),
                          const SizedBox(width: 8),
                          Text('ສະຖານະການຊຳລະ: ${booking.courtBooking.paymentStatus}'),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          const Icon(Icons.person_outline, color: Colors.red),
                          const SizedBox(width: 8),
                          Text('ຈອງໂດຍ: ${booking.courtBooking.bookedBy}'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }
}
