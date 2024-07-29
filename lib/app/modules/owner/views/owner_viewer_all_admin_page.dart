import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_viewer_all_admin_controller.dart';

class OwnerViewerAllAdminPage extends StatelessWidget {
  final OwnerViewerAllAdminController controller = Get.put(OwnerViewerAllAdminController());

  OwnerViewerAllAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ແອດມິນທັງໝົດ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.fetchAdmins(),
          ),
        ],
      ),
      body: Obx(() {
        if (controller.adminList.isEmpty) {
          return const Center(child: Text('ບໍ່ມີຂໍ້ມູນແອດມິນ'));
        }
        return RefreshIndicator(
          onRefresh: () => controller.fetchAdmins(),
          child: ListView.builder(
            itemCount: controller.adminList.length,
            itemBuilder: (context, index) {
              final admin = controller.adminList[index];
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(
                              admin.username[0].toUpperCase(),
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              admin.username,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Chip(
                          //   label: Text(
                          //     admin.isActive ? 'Active' : 'Inactive',
                          //     style: const TextStyle(color: Colors.white),
                          //   ),
                          //   backgroundColor: admin.isActive ? Colors.green : Colors.red,
                          // ),
                        ],
                      ),
                      const Divider(thickness: 1, height: 20),
                      _buildDetailRow('ເບີໂທ:', admin.phone),
                      const SizedBox(height: 10),
                      if (admin.courtBookingPaymentHistory.isNotEmpty)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'ປະຫວັດການຊຳລະ:',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            ...admin.courtBookingPaymentHistory.map((payment) {
                              return Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    _buildDetailRow('ເລກທີເດີ່ນ:', payment.courtAvailable.courtBooking.courtNumber),
                                    _buildDetailRow('ຍອດຊຳລະ:', '${payment.courtAvailable.allTotalAmount} ກີບ'),
                                    // _buildDetailRow('ວັນທີ:', payment.createdAt),
                                    _buildDetailRow(
                                      'ວັນທີ:',
                                      DateFormat('yyyy-MM-dd').format(
                                        DateTime.parse(payment.createdAt),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }).toList(),
                          ],
                        )
                      else
                        const Text(
                          'ບໍ່ມີປະຫວັດການຊຳລະ',
                          style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
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

  Widget _buildDetailRow(String title, String value) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 5),
        Expanded(
          child: Text(value),
        ),
      ],
    );
  }
}
