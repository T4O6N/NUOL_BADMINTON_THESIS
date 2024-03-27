// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/setting/views/setting_view.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/icon_button_withText.dart';
import 'package:nuol_badminton_thesis/app/widgets/policy_text.dart';

class SettingMenu extends StatelessWidget {
  const SettingMenu({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      margin: const EdgeInsets.only(bottom: 10),
      // height: height * 0.25,
      width: width * .87,
      child: Column(
        children: [
          IconButtonWithText(
            icon: SvgPicture.asset(AppImagesSvg.settingsIcon),
            label: 'ການຕັ້ງຄ່າ',
            onTap: () {
              Get.to(const SettingView());
            },
          ),
          IconButtonWithText(
            icon: SvgPicture.asset(AppImagesSvg.questionMarkIcon),
            label: 'ຄວາມຊ່ວຍເຫຼືອ ແລະ ຄວາມຄິດເຫັນ',
            onTap: () {},
          ),
          IconButtonWithText(
            icon: SvgPicture.asset(AppImagesSvg.exitIcon),
            label: 'ອອກຈາກລະບົບ',
            onTap: () {},
          ),
          const PolicyText(),
        ],
      ),
    );
  }
}
