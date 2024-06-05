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
  final List<String> court = ['A1', 'B2', 'C3', 'D4', 'E5', 'F6', 'G7', 'H8', 'I9', 'J10'];
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
          itemCount: court.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: CardBooking(
                price: 'ລາຄາ : 80.000 ₭/ ຊົ່ວໂມງ',
                imageAsset: 'assets/images/court.jpeg',
                court: 'ຄອດ : ${(court[index])}',
              ),
            );
          },
        );
      }
    });
  }
}
