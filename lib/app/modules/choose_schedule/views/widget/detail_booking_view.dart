import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/controllers/choose_schedule_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/views/widget/choose_schedule_stf_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/model/court.dart';
import 'package:nuol_badminton_thesis/app/modules/payment_detail/controllers/payment_detail_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/payment_detail/views/widget/bill_payment_detail.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/contact_info_widget.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';

class DetailBookingView extends StatelessWidget {
  final Court court;
  final Map<DateTime, List<String>> bookingDetails;
  final int totalPrice;
  const DetailBookingView({
    super.key,
    required this.court,
    required this.bookingDetails,
    required this.totalPrice,
  });
  final int discount = 20000;

  int calculateDiscountedPrice(int totalPrice) {
    return totalPrice - discount;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final int finalTotalPrice = calculateDiscountedPrice(totalPrice);
    // final PaymentDetailController controller = Get.put(PaymentDetailController());
    ChooseScheduleController chooseScheduleController = Get.put(ChooseScheduleController());
    chooseScheduleController.totalPrice.value = finalTotalPrice;
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
                            )),
                        const SizedBox(height: 12),
                        ListView.separated(
                          shrinkWrap: true, // Added shrinkWrap to ListView.builder
                          physics: const NeverScrollableScrollPhysics(), // Disabled internal scrolling
                          itemCount: bookingDetails.keys.length,
                          itemBuilder: (context, index) {
                            final date = bookingDetails.keys.elementAt(index);
                            final timeSlots = bookingDetails[date]!;
                            final formattedDate = DateFormat('dd/MM/yyyy').format(date);
                            chooseScheduleController.formattedDate.value = formattedDate;
                            return ListTile(
                              title: Text('ວັນ: $formattedDate'),
                              subtitle: Text('ເວລາ: ${timeSlots.join(', ')}'),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) => const Divider(),
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            Get.to(ChooseScheduleStfView(court: court));
                          },
                          child: Container(
                            height: size.height * 0.04,
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
                              // "${controller.totalPrice} ₭",
                              NumberFormatter.formatPriceKip(totalPrice),
                              // "s",
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
                    Get.to(
                      BillPaymentDetail(
                        court: court,
                        bookingDetails: bookingDetails,
                        userName: chooseScheduleController.usernameController.text,
                        phoneNumber: chooseScheduleController.phoneNumberController.text,
                        finalTotalPrice: finalTotalPrice,
                        totalPrice: totalPrice,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
