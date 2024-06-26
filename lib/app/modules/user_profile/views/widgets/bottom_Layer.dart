// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nuol_badminton_thesis/app/constants/size_screen_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/card_info.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/container_point.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/setting_menu.dart';

class BottomLayer extends StatelessWidget {
  const BottomLayer({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    final double heightCover = MediaQuery.of(context).size.height * 0.2;
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(color: Color(0xffd00a950), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20))),
      width: double.infinity,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: Get.width < SizeScreenConstants.sizeScreen ? heightCover / 1.2 : heightCover / 1.5,
            ),
            CardInfoProfile(width: size.width, heightAccountInfo: Get.width <= SizeScreenConstants.sizeScreen ? size.height * .28 : size.height * .27, height: size.height),
            const SizedBox(
              height: 10,
            ),
            ContainerPoint(height: size.height, width: size.width),
            SettingMenu(height: size.height, width: size.width),
          ],
        ),
      ),
    );
  }
}
