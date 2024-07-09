// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/controllers/choose_schedule_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/param/list_court.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/views/widget/choose_schedule_stf_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/contact_info_widget.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';
import 'package:nuol_badminton_thesis/app/widgets/warning_dialog.dart';

class DetailBookingView extends StatelessWidget {
  final Court court;
  List<ListCourt> bookingDetails;
  final int totalPrice;
  DetailBookingView({
    super.key,
    required this.court,
    required this.bookingDetails,
    required this.totalPrice,
  });
  final int discount = 20000;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final int finalTotalPrice = totalPrice - discount;
    ChooseScheduleController chooseScheduleController = Get.put(ChooseScheduleController());
    chooseScheduleController.finalTotalPrice.value = finalTotalPrice;
    chooseScheduleController.bookingDetails = bookingDetails;
    chooseScheduleController.courtModel.value = court;
    chooseScheduleController.totalPrice.value = totalPrice;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ລາຍບະອຽດການຊຳລະເງິນ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              children: [
                ContactInfoWidget(
                  nameController: chooseScheduleController.usernameController,
                  phoneController: chooseScheduleController.phoneNumberController,
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "ຕາຕະລາງເວລາ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Divider(),
                        Text("ຄອດ : ${court.name}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            )),
                        ...bookingDetails.map(
                          (courtModel) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ວັນທີ່ : ${courtModel.date}',
                                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                ),
                                ...courtModel.durationTime.map((timeSlot) {
                                  return Text(
                                    " - $timeSlot.",
                                    style: const TextStyle(color: Colors.grey),
                                  );
                                }).toList(),
                                const SizedBox(height: 12),
                              ],
                            );
                          },
                        ).toList(),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Get.to(ChooseScheduleStfView(court: court));
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.black,
                                width: 0.4,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                "ແກ້ໄຂ",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "ສະຫຼຸບການຊຳລະເງິນ",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const Divider(),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "ຈຳນວນເງິນ",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              NumberFormatter.formatPriceKip(totalPrice),
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "ສວນຫຼຸດ",
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text(
                              NumberFormatter.formatPriceKip(discount),
                              style: const TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "ລາຄາ",
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            Text(
                              NumberFormatter.formatPriceKip(finalTotalPrice),
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                BookingButton(
                  onTap: () {
                    final name = chooseScheduleController.usernameController.text;
                    final phone = chooseScheduleController.phoneNumberController.text;
                    if (phone.isEmpty || name.isEmpty) {
                      warningDialog(des: "ກະລຸນາເພີ່ມຂໍ້ມູນຕິດຕໍ່", context: context, btnOkOnPress: () {});
                    } else if (!['2', '5', '7', '9'].contains(phone[2]) || phone.length != 10) {
                      warningDialog(des: "ກະລຸນາປ້ອນເບີໃຫ້ຖືກຕ້ອງ", context: context, btnOkOnPress: () {});
                    } else {
                      chooseScheduleController.bookingCourtOrder(context: context);
                    }
                  },
                  text: 'ຈອງ',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
