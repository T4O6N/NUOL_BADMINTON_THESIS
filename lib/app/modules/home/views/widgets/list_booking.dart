import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/home/controllers/home_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/card_booking.dart';

class ListBooking extends StatelessWidget {
  const ListBooking({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return ListView.builder(
      itemCount: homeController.court.length,
      itemBuilder: (context, index) {
        final court = homeController.courts[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: CardBooking(
            price: 'ລາຄາ : ${(court.price.toString())} ₭/ ຊົ່ວໂມງ',
            imageAsset: court.imageUrl,
            court: 'ຄອດ : ${(court.name)}',
            indexCourt: index,
            courtIndex: court,
          ),
        );
      },
    );
  }
}
