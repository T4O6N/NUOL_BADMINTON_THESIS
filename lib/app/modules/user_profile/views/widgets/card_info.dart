import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/edit_user_profile.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/textField_profile.dart';

class CardInfoProfile extends StatelessWidget {
  const CardInfoProfile({
    super.key,
    required this.width,
    required this.heightAccountInfo,
    required this.height,
  });

  final double width;
  final double heightAccountInfo;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width * .87,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(2, 1),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Text(
                "Account info",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'Roboto'),
              ),
              InkWell(
                  onTap: () {
                    Get.to(const EditUserProfile());
                  },
                  child: const ImageIcon(AssetImage("assets/icons/iconPng/pen.png"), color: Color(0xFF00A950))),
            ]),
            const TextFieldProfile(
              label: 'asdasd',
              icon: Icon(
                Icons.person,
                size: 30,
                color: Color(0xFFD9D9D9),
              ),
            ),
            const TextFieldProfile(
              label: 'asdasd',
              icon: Icon(
                Icons.email,
                size: 30,
                color: Color(0xFFD9D9D9),
              ),
            ),
            const TextFieldProfile(
              label: 'asdasd',
              icon: Icon(
                Icons.phone,
                size: 30,
                color: Color(0xFFD9D9D9),
              ),
            ),
            SizedBox(
              height: height * 0.04,
              // width: width * .87,
              child: TextField(
                textAlign: TextAlign.left,
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Address",
                  hintStyle: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Roboto'),
                  prefixIcon: SvgPicture.asset(
                    AppImagesSvg.positionIcon,
                    color: const Color(0xFFD9D9D9),
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
