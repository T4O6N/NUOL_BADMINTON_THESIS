import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/payment_detail/views/widget/bill_payment_detail.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/contact_info_widget.dart';
import 'package:nuol_badminton_thesis/app/widgets/warning_dialog.dart';

import '../controllers/admin_booking_controller.dart';

class AdminBookingView extends GetView<AdminBookingController> {
  const AdminBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    final AdminBookingController controller = Get.put(AdminBookingController());
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ຈອງສຳຫຼັບແອັດມິນ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              ContactInfoWidget(
                nameController: nameController,
                phoneController: phoneController,
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
                        "ຄອດ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Divider(),
                      Obx(
                        () {
                          return DropdownButtonFormField<String>(
                            value: controller.selectedValue.value,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            decoration: const InputDecoration(
                              labelText: "ຄອດ",
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (String? newValue) {
                              controller.setSelected(newValue!);
                              debugPrint('value: $newValue');
                            },
                            items: controller.options.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(AppImagesSvg.badmintonIcon),
                                    const SizedBox(width: 10),
                                    Text(value),
                                  ],
                                ),
                              );
                            }).toList(),
                          );
                        },
                      ),
                      const SizedBox(height: 12),
                      const Text(
                        "ເວລາ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Divider(),
                      SizedBox(
                        height: size.height * 0.4,
                        child: ListView.builder(
                          itemCount: controller.courtTime.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              height: size.height * 0.05,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                  color: Colors.grey,
                                  width: 0.4,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      controller.courtTime[index],
                                      style: const TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          // "80.000 ₭",
                                          "XXXXXXXX",
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                        Obx(
                                          () => Checkbox(
                                            checkColor: Colors.white,
                                            focusColor: Colors.green,
                                            activeColor: Colors.green,
                                            value: controller.isSelected[index],
                                            onChanged: (bool? value) {
                                              controller.toggleSelection(index);
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "ລາຄາລວມ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "XXXXXXXX",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20),
              BookingButton(onTap: () {
                // warningDialog(des: "des", context: context, btnOkOnPress: () {});
                Get.to(const BillPaymentDetail());
              }),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
