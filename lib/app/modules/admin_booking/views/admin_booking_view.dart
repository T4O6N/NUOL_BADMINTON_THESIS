import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/widgets/contact_info_widget.dart';

import '../controllers/admin_booking_controller.dart';

class AdminBookingView extends GetView<AdminBookingController> {
  const AdminBookingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ຈອງສຳຫຼັບແອັດມິນ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            ContactInfoWidget(
              nameController: nameController,
              phoneController: phoneController,
            ),
            const SizedBox(height: 20),
            Container(
              // height: size.height * .27,
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
