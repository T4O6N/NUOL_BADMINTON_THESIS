// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/widgets/listview_stack_booking.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/widgets/show_duration_booking.dart';

import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  const BookingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text("Booking"),
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        centerTitle: false,
        titleSpacing: 20,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  AppImagesSvg.notificationIcon,
                  color: AppColors.primaryColor,
                )),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(size.height * 0.055),
          child: ShowDurationBooking(size: size, dateTime: '8/8/8888'),
        ),
      ),
      body: const SafeArea(
        child: ListViewStackBooking(listNum: 12),
      ),
    );
  }
}
//  DateContainer(), 