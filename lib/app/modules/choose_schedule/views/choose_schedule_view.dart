import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/payment_detail/views/payment_detail_view.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';

import '../controllers/choose_schedule_controller.dart';

class ChooseScheduleView extends GetView<ChooseScheduleController> {
  const ChooseScheduleView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final ChooseScheduleController controller = Get.put(ChooseScheduleController());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ເລືອກຕາຕະລາງເວລາ',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: DatePicker(
                  DateTime.now(),
                  height: 100,
                  width: 80,
                  initialSelectedDate: DateTime.now(),
                  selectionColor: Colors.green,
                  selectedTextColor: Colors.white,
                  daysCount: 7,
                  dateTextStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Container(
                      height: size.height * .13,
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
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(8),
                            width: size.width * .24,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              image: const DecorationImage(
                                image: AssetImage("assets/images/court.jpeg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ເດີ່ນຕີດອກ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("ຄອດ : xxx"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: size.height * 0.5, // Set a specific height or use a flexible widget
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
                                        "80.000 ₭",
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
                        "160.000 ₭",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    const SizedBox(height: 20),
                    BookingButton(onTap: () {
                      Get.to(PaymentDetailView());
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
