import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/constants/lottie_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/controllers/scan_qr_controller.dart';

class QrDataDetail extends StatelessWidget {
  final String qrData;
  const QrDataDetail({super.key, required this.qrData});

  @override
  Widget build(BuildContext context) {
    ScanQrController controller = Get.put(ScanQrController());

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
                      fontFamily: 'Roboto',
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
                                controller.bookingData.value.courtBooking.fullName,
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
                                controller.bookingData.value.courtBooking.phone,
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
                                controller.bookingData.value.courtBooking.courtNumber,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          ...controller.dataList.map((courtModel) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ວັນທີ່: ${courtModel.date}',
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                ...courtModel.durationTime.map((timeSlot) {
                                  return Text(
                                    timeSlot,
                                    style: const TextStyle(color: Colors.grey),
                                  );
                                }).toList(),
                                const SizedBox(height: 10),
                              ],
                            );
                          }).toList(),
                          // const Divider(),
                          // const Text(
                          //   "ລາຍລະອຽດການຈ່າຍເງິນ",
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          // const SizedBox(height: 10),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Text(
                          //       "ຈຳນວນເງິນ",
                          //       style: TextStyle(
                          //         color: Colors.grey,
                          //       ),
                          //     ),
                          //     Text(
                          //       NumberFormatter.formatPriceKip(totalPrice),
                          //       style: const TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Text(
                          //       "ຈຳນວນເງິນ",
                          //       style: TextStyle(color: Colors.grey),
                          //     ),
                          //     Text(
                          //       NumberFormatter.formatPriceKip(controller.bookingData.value.totalAmount),
                          //       style: const TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 10),
                          // const Divider(),
                          // const SizedBox(height: 10),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Text(
                          //       "ລາຄາ",
                          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          //     ),
                          //     Text(
                          //       NumberFormatter.formatPriceKip(finalTotalPrice),
                          //       style: const TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "ຄອດທີ່ສາມາດລົງຫຼິ້ນໄດ້ປັດຈຸບັນ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                          ...controller.courtAvailableList.map((courtModel) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ວັນທີ່: ${courtModel.date}',
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 5),
                                ...courtModel.durationTime.map((timeSlot) {
                                  return Text(
                                    timeSlot,
                                    style: const TextStyle(color: Colors.grey),
                                  );
                                }).toList(),
                                const SizedBox(height: 10),
                              ],
                            );
                          }).toList(),

                          // const Divider(),
                          // const Text(
                          //   "ລາຍລະອຽດການຈ່າຍເງິນ",
                          //   style: TextStyle(fontWeight: FontWeight.bold),
                          // ),
                          // const SizedBox(height: 10),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Text(
                          //       "ຈຳນວນເງິນ",
                          //       style: TextStyle(
                          //         color: Colors.grey,
                          //       ),
                          //     ),
                          //     Text(
                          //       NumberFormatter.formatPriceKip(totalPrice),
                          //       style: const TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Text(
                          //       "ຈຳນວນເງິນ",
                          //       style: TextStyle(color: Colors.grey),
                          //     ),
                          //     Text(
                          //       NumberFormatter.formatPriceKip(controller.bookingData.value.totalAmount),
                          //       style: const TextStyle(

                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                          // const SizedBox(height: 10),
                          // const Divider(),
                          // const SizedBox(height: 10),
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          //     const Text(
                          //       "ລາຄາ",
                          //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                          //     ),
                          //     Text(
                          //       NumberFormatter.formatPriceKip(finalTotalPrice),
                          //       style: const TextStyle(
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     ),
                          //   ],
                          // ),
                        ],
                      ),
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
              child: Center(
                child: LottieBuilder.asset(LottieConstants.empty),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
