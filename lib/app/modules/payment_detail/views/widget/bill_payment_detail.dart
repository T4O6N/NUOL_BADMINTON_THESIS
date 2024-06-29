import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';
import 'package:nuol_badminton_thesis/app/widgets/wave_clipper.dart';

import '../../../../widgets/number_format.dart';

class BillPaymentDetail extends StatelessWidget {
  final Court court;
  final Map<DateTime, List<String>> bookingDetails;
  final String userName;
  final String phoneNumber;
  final int finalTotalPrice;
  final int totalPrice;

  const BillPaymentDetail({
    super.key,
    required this.court,
    required this.bookingDetails,
    required this.phoneNumber,
    required this.userName,
    required this.finalTotalPrice,
    required this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    final int discount = 20000;
    final List<String> allTimeSlots = bookingDetails.values.expand((slots) => slots).toList();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          "ບິນລາຍລະອຽດການຈອງ",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
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
                          const SizedBox(height: 20),
                          const Text(
                            "ລາຍລະອຽດການຈອງ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ຈອງໂດຍ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                userName,
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
                                "ເບີ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                phoneNumber,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("ຄອດ", style: TextStyle(color: Colors.grey)),
                              Text(
                                court.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const Divider(),
                          // ignore: prefer_const_constructors
                          Text(
                            "ວັນທີ່ຈອງ",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ListView.separated(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: bookingDetails.keys.length,
                            itemBuilder: (context, index) {
                              final date = bookingDetails.keys.elementAt(index);
                              final timeSlots = bookingDetails[date]!;
                              final formattedDate = DateFormat('dd/MM/yyyy').format(date);
                              return Padding(
                                padding: const EdgeInsets.symmetric(vertical: 4.0),
                                child: ListTile(
                                  dense: true,
                                  contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  title: Text(
                                    'ວັນ: $formattedDate',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'ເວລາ: ${timeSlots.join(', ')}',
                                    style: const TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) => const Divider(),
                          ),
                          const Divider(),
                          const Text(
                            "ລາຍລະອຽດການຈ່າຍເງິນ",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: allTimeSlots.length,
                            itemBuilder: (context, index) {
                              final timeSlot = allTimeSlots[index];
                              return ListTile(
                                dense: true,
                                contentPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                                title: Text(
                                  timeSlot,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                                trailing: const Text(
                                  "80,000 ₭",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              );
                            },
                          ),

                          const Divider(),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ຈຳນວນເງິນ",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                NumberFormatter.formatPriceKip(totalPrice),
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
                                "ສວນຫຼຸດ",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                NumberFormatter.formatPriceKip(discount),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Divider(),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "ລາຄາ",
                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                NumberFormatter.formatPriceKip(finalTotalPrice),
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: QrImageView(
                              data: "12345678",
                              size: Get.height * 0.2,
                              dataModuleStyle: const QrDataModuleStyle(color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
