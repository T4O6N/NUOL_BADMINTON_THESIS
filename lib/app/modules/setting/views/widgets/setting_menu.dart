import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingMenu extends StatelessWidget {
  const SettingMenu({
    super.key,
    required this.title,
    required this.subTitle,
    required this.assetSvg,
    required this.onTap,
  });
  final String title;
  final String subTitle;
  final String assetSvg;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 75,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(0, 0))
          ]),
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
                        child: SvgPicture.asset(assetSvg),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text(
                            subTitle,
                            style: const TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w400),
                          )
                        ],
                      )
                    ],
                  ),
                  // SvgPicture.asset(AppImagesSvg.notificationIcon)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
