import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';

class MenuChangeLanguages extends StatefulWidget {
  const MenuChangeLanguages({
    super.key,
    required this.title,
    required this.subTitle,
    required this.assetSvg,
  });
  final String title;
  final String subTitle;
  final String assetSvg;

  @override
  State<MenuChangeLanguages> createState() => _MenuChangeLanguagesState();
}

class _MenuChangeLanguagesState extends State<MenuChangeLanguages> {
  @override
  Widget build(BuildContext context) {
    bool selected = true;
    return Container(
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
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: () => Get.updateLocale(const Locale('en')),
                              // onPressed: () {},
                              child: const Text('English'),
                            ),
                            ElevatedButton(
                              onPressed: () => Get.updateLocale(const Locale('lo')),
                              // onPressed: () {},
                              child: const Text('Lao'),
                            ),
                            // Rest of your app's content
                          ],
                        );
                      });
                },
                child: Container(
                  color: Colors.white,
                  // padding: const EdgeInsets.only(right: 20),
                  width: 60,
                  height: 30,
                  child: SvgPicture.asset(
                    AppImagesSvg.tripleDotIcon,
                    height: 20,
                    width: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
