import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/bottom_Layer.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/top_layer.dart';

class Background extends StatelessWidget {
  const Background({
    super.key,
    required this.heightCover,
    required this.height,
  });

  final double heightCover;

  final double height;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TopLayer(heightCover: heightCover),
        BottomLayer(height: height),
      ],
    );
  }
}
