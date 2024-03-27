// List card for booking
// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nuol_badminton_thesis/app/modules/home/controllers/home_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/card_booking.dart';
import 'package:shimmer/shimmer.dart';

class ListBooking extends StatelessWidget {
  ListBooking({
    super.key,
    required this.listNum,
  });
  final int listNum;

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Obx(() {
      if (homeController.isLoading.value) {
        return Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                    width: double.infinity,
                    height: .25 * size.height,
                    decoration: BoxDecoration(
                      color: Colors.grey[300]!,
                      borderRadius: BorderRadius.circular(8),
                    )),
              );
            },
          ),
        );
      } else {
        return ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: CardBooking(
                namePlace: 'ອະໂນໄທປັນຍາປະດິດ',
                location: 'ບ້ານ ຊຽງຍືນ, ເມືອງ ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ',
                point: 4,
                date: 'ວັນທີ່ 19/7/2023',
                price: '80.000 ₭/1h',
                imageAsset: 'assets/images/football_demo2.png',
              ),
            );
          },
        );
      }
    });
  }
}
