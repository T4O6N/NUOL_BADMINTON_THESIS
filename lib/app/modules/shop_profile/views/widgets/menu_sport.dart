import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';

class MenuSport extends StatelessWidget {
  const MenuSport({
    super.key,
    required this.text,
    required this.assetImage,
  });
  final String text;
  final String assetImage;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
          child: TextField(
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.center,
            readOnly: true,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(left: 50),
              enabledBorder: InputBorder.none,
              focusedBorder: InputBorder.none,
              hintStyle: const TextStyle(color: Colors.black),
              hintText: text,
              prefixIconConstraints: const BoxConstraints(maxHeight: 50, maxWidth: 60),
              prefixIcon: Transform.scale(
                scale: 1,
                child: Row(
                  children: [
                    InkWell(
                        onTap: () {},
                        child: SvgPicture.asset(
                          assetImage,
                          width: 50,
                          height: 50,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              suffixIconConstraints: const BoxConstraints(maxHeight: 30, maxWidth: 30),
              suffixIcon: SvgPicture.asset(
                AppImagesSvg.arrowForwardIcon,
                height: 25,
                width: 25,
              ),
            ),
            // textAlign: TextAlign.start,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            height: 2,
            width: double.infinity,
            color: const Color(0xFF909090),
          ),
        )
      ],
    );
  }
}
