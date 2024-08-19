import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/controllers/admin_view_history_controller.dart';

class AdminViewHistoryView extends StatelessWidget {
  final AdminViewHistoryController controller = Get.put(AdminViewHistoryController());
  // final String adminId;

  AdminViewHistoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.fetchAdminViewHistory();

    return Scaffold(
      appBar: AppBar(
        title: const Text('ປະຫວັດການຊຳລະ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => controller.fetchAdminViewHistory(),
          ),
        ],
      ),
      // body: Obx(() {
      //   final data = controller.adminViewHistoryData.value;
      //   if (data == null) {
      //     return const Center(child: CircularProgressIndicator()s);
      //   }

      //   if (data.courtBookingPaymentHistory.isEmpty) {
      //     return const Center(child: Text('ບໍ່ມີປະຫວັດການຊຳລະ'));
      //   }

      //   return ListView.builder(
      //     padding: const EdgeInsets.all(16.0),
      //     itemCount: data.courtBookingPaymentHistory.length,
      //     itemBuilder: (context, index) {
      //       final history = data.courtBookingPaymentHistory[index];
      //       return Card(
      //         elevation: 5,
      //         shape: RoundedRectangleBorder(
      //           borderRadius: BorderRadius.circular(15),
      //         ),
      //         margin: const EdgeInsets.symmetric(vertical: 10),
      //         child: Padding(
      //           padding: const EdgeInsets.all(16.0),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Text(
      //                 'ເລກທີເດີ່ນ: ${history.id}',
      //                 style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      //               ),
      //               const SizedBox(height: 10),
      //               _buildDetailRow('ເບີໂທ:', data.phone),
      //               _buildDetailRow('ຊື່ຜູ້ໃຊ້:', data.username),
      //               _buildDetailRow('ຍອດຊຳລະ:', 'ຍອດຊຳລະ: ${history.deviceId}'),
      //               // _buildDetailRow('ວັນທີ:', history.createdAt),
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   );
      // }),
      body: Container(),
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
