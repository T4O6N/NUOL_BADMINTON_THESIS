import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/constants/lottie_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/controllers/auth_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/controllers/scan_qr_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/param/payment_param_model.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';

class QrDataDetail extends StatelessWidget {
  const QrDataDetail({super.key});

  @override
  Widget build(BuildContext context) {
    ScanQrController controller = Get.put(ScanQrController());
    final AuthController authController = Get.put(AuthController());
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "ລາຍລະອຽດການຈອງຂອງລູກຄ້າ",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: controller.obx(
        (bookingList) => SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 12, bottom: 12),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: const AssetImage(AppImages.whiteJongLogo),
                    backgroundColor: Colors.green[500],
                    radius: 80,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'ເດີ່ນຕີດອກປີກໄກ່ ສະໂມສອນເສດຖາ',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: Get.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            "ລາຍລະອຽດການຈອງ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ຈອງໂດຍ :",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                controller.bookingData.value.fullName,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ເບີ : ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                controller.bookingData.value.phone,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("ຄອດ :", style: TextStyle(color: Colors.grey)),
                              Text(
                                controller.bookingData.value.courtNumber,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          if (controller.courtList.isNotEmpty) ...[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ວັນທີ່: ${controller.courtList[0].date}',
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                ...controller.courtList[0].durationTime.map((timeSlot) {
                                  return Text(
                                    "- $timeSlot.",
                                    style: const TextStyle(color: Colors.grey),
                                  );
                                }).toList(),
                                const SizedBox(height: 10),
                              ],
                            ),
                          ] else ...[
                            const Text('No court data available.'),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "ຄອດທີ່ສາມາດລົງຫຼິ້ນໄດ້ປັດຈຸບັນ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: Get.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.green,
                      ),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          const Text(
                            "ລາຍລະອຽດເວລາ",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const Divider(),
                          if (controller.courtAvailableList.isNotEmpty) ...[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ວັນທີ່: ${controller.courtAvailableList[0].date}',
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                ...controller.courtAvailableList[0].durationTime.map((timeSlot) {
                                  return Text(
                                    "- $timeSlot .",
                                    style: const TextStyle(color: Colors.grey),
                                  );
                                }).toList(),
                                const SizedBox(height: 10),
                                const Divider(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "ລາຄາ :",
                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    Text(
                                      NumberFormatter.formatPriceKip(
                                        controller.courtAvailableList[0].allTotalAmount,
                                      ),
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.green),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ] else ...[
                            const Text('No available court data.'),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: BookingButton(
                      onTap: () async {
                        if (controller.courtAvailableList.isNotEmpty) {
                          final deviceId = controller.bookingData.value.deviceId;
                          final paymentArgument = PaymentParamModel(
                            courtAvailableId: controller.courtAvailableList[0].id,
                            deviceId: deviceId,
                            courtBookingId: controller.bookingData.value.id,
                            adminId: authController.loggedInAdmin.value!.id,
                          );
                          await controller.sendPayment(paymentArgument);
                        } else {
                          Get.snackbar("Error", "No available court data to make payment.");
                        }
                      },
                      text: 'ຈ່າຍເງິນ',
                    ),
                  ),
                ],
              ),
            ),
          ),
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
              child: const Center(
                child: Text(
                  "ຄິວອາຖືກນຳໃຊ້ແລ້ວ..",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
