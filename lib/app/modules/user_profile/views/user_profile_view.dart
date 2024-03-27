import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/constants/size_screen_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/background.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/circle_profile.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/select_image_profile.dart';

import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double heightCover = MediaQuery.of(context).size.height * 0.2;
    final double profileHeight = MediaQuery.of(context).size.width * 0.45;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          centerTitle: false,
          titleSpacing: 20,
          titleTextStyle: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, fontFamily: 'Roboto', color: Colors.black),
          title: Row(
            children: [
              const Text("Profile"),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: SvgPicture.asset(
                  AppImagesSvg.notificationIcon,
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 1.5,
                        offset: const Offset(5, 5),
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Background(
                        heightCover: heightCover,
                        height: size.height,
                      ),
                      Positioned(
                        top: Get.width <= SizeScreenConstants.sizeScreen ? heightCover / 4 : heightCover / 2.5,
                        child: const CircleProfile(),
                      ),
                      SelectImageForProfile(profileHeight: profileHeight)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
