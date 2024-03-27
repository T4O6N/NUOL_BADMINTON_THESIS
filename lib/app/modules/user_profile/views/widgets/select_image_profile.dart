import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/constants/size_screen_constants.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/icon_button_withText.dart';

class SelectImageForProfile extends StatelessWidget {
  const SelectImageForProfile({
    super.key,
    required this.profileHeight,
  });

  final double profileHeight;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: Get.width <= SizeScreenConstants.sizeScreen ? profileHeight : profileHeight * 1.25,
      left: profileHeight + (profileHeight / 7),
      child: InkWell(
        onTap: () {
          _showModalBottomSheet(context);
        },
        child: const CircleAvatar(
          radius: 20,
          backgroundColor: Color.fromARGB(255, 208, 208, 208),
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/icons/iconPng/photo-camera.png"),
          ),
        ),
      ),
    );
  }
}

Future _showModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    height: 6,
                    width: 80,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                  IconButtonWithText(
                    label: 'ເບີ່ງຮູບProfile',
                    icon: SvgPicture.asset(AppImagesSvg.userProfileIcon),
                    onTap: () {},
                  ),
                  IconButtonWithText(
                    label: 'ເລືອກຮູບProfile',
                    icon: SvgPicture.asset(AppImagesSvg.cameraIcon),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ));
}
