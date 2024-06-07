import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/views/choose_schedule_view.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';
import 'package:nuol_badminton_thesis/app/widgets/reusetextformfield.dart';

import '../controllers/payment_detail_controller.dart';

class PaymentDetailView extends GetView<PaymentDetailController> {
  const PaymentDetailView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final TextEditingController nameController = TextEditingController();
    final TextEditingController phoneController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ລາຍບະອຽດການຊຳລະເງິນ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Column(
            children: [
              Container(
                height: size.height * .28,
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
                        "ຂໍ້ມູນຕິດຕໍ່",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const Divider(),
                      const SizedBox(height: 8),
                      ReusableTextFormField(
                        controller: nameController,
                        labelText: 'ຊື່',
                        hintText: 'ປ້ອນຊື້',
                      ),
                      const SizedBox(height: 8),
                      ReusableTextFormField(
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        controller: phoneController,
                        labelText: 'ເບີໂທ',
                        hintText: 'ປ້ອນເບີໂທ',
                      ),
                      const SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: size.height * .27,
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
                      const Text("ຄອດ : xxx"),
                      const SizedBox(height: 6),
                      const Text("Mon, 1 July 2024"),
                      const SizedBox(height: 6),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("10 : 00 - 11 : 00"),
                          Text("80.000 ₭"),
                        ],
                      ),
                      const SizedBox(height: 6),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("11 : 00 - 12 : 00"),
                          Text("80.000 ₭"),
                        ],
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Get.to(const ChooseScheduleView());
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
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                height: size.height * .2,
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
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ສະຫຼຸບການຊຳລະເງິນ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Divider(),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ຈຳນວນເງິນ",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "160.000 ₭",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "ສວນຫຼຸດ",
                            style: TextStyle(color: Colors.blue),
                          ),
                          Text(
                            "20.000 ₭",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Divider(),
                      Row(
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
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              BookingButton(onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
