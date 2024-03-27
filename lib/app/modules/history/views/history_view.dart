// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/history/views/widgets/history_list.dart';
import 'package:nuol_badminton_thesis/app/modules/history/views/widgets/show_duration_history.dart';
import '../controllers/history_controller.dart';

class HistoryView extends GetView<HistoryController> {
  const HistoryView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
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
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(fontFamily: 'Roboto', fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          title: const Text('History'),
          bottom: PreferredSize(preferredSize: Size.fromHeight(size.height * 0.055), child: ShowDurationHistory(size: size, dateTime: '8/2023')),
        ),
        body: const ListHistory(
          nameShop: 'ເດີ່ນເຕະບານຮ້ອງຄໍາ',
          typeDern: 'ເຕະບານ',
          numberDern: 'A',
          dateDemo: '6/08/2023',
          durationRent: '17:00 - 18:00, 18:00 - 19:00',
          price: '700.000',
          itemCount: 4,
          depositOrder: '100.000',
        ));
  }
}
