import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';

class MenuNotificatoin extends StatefulWidget {
  const MenuNotificatoin({
    super.key,
    required this.title,
    required this.subTitle,
    required this.assetSvg,
  });
  final String title;
  final String subTitle;
  final String assetSvg;

  @override
  State<MenuNotificatoin> createState() => _MenuNotificatoinState();
}

class _MenuNotificatoinState extends State<MenuNotificatoin> {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 75,
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(.1), blurRadius: 7, spreadRadius: 0, offset: const Offset(0, 0))]),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0),
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: SvgPicture.asset(widget.assetSvg),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.title,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          widget.subTitle,
                          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ],
                ),
                // SvgPicture.asset(AppImagesSvg.notificationIcon)
                Switch(
                    value: selected,
                    activeColor: AppColors.primaryColor,
                    onChanged: (bool value) {
                      setState(() {
                        selected = value;
                      });
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
