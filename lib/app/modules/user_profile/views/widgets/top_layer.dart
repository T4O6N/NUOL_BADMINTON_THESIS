import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';

class TopLayer extends StatelessWidget {
  const TopLayer({
    super.key,
    required this.heightCover,
  });

  final double heightCover;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.backgroundProfile), fit: BoxFit.cover),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          )),
      // margin:const EdgeInsets.only(bottom: bottom),
      height: heightCover,
      width: double.infinity,
    );
  }
}
