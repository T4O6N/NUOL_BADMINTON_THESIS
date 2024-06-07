import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/widgets/wave_clipper.dart';
import 'package:qr_flutter/qr_flutter.dart';

class BillPaymentDetail extends StatelessWidget {
  const BillPaymentDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text(
          "ບິນລາຍລະອຽດການຈອງ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
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
              ClipPath(
                clipper: MovieTicketBothSidesClipper(),
                child: Container(
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
                        // Column 1
                        const Text(
                          "ລາຍລະອຽດການຈອງ",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ຈອງໂດຍ", style: TextStyle(color: Colors.grey)),
                            Text("Tontakarn"),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ເບີ", style: TextStyle(color: Colors.grey)),
                            Text("+8562077454651"),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ຄອດ", style: TextStyle(color: Colors.grey)),
                            Text("A1"),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("ວັນທີ່ຈອງ", style: TextStyle(color: Colors.grey)),
                            Text("1 July 2024"),
                          ],
                        ),
                        const SizedBox(height: 18),
                        const Text(
                          "ລາຍລະອຽດການຈ່າຍເງິນ",
                          style: TextStyle(fontWeight: FontWeight.w400),
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "10 : 00 - 11 : 00",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "80.000 ₭",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "11 : 00 - 12 : 00",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "80.000 ₭",
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ຈຳນວນເງິນ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "160.000 ₭",
                            ),
                          ],
                        ),

                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ສວນຫຼຸດ",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "20.000 ₭",
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Divider(),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "ລາຄາ",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              "140.000 ₭",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                        Center(
                          child: QrImageView(
                            data: "Nrng phoy thuek tuah leo",
                            size: Get.height * 0.2,
                            dataModuleStyle: const QrDataModuleStyle(color: Colors.grey),
                          ),
                        ),
                        // Divide 2
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
