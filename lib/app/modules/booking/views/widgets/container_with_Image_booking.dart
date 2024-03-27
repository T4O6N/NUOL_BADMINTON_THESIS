import 'package:flutter/material.dart';

class ContainerWithImageBooking extends StatelessWidget {
  const ContainerWithImageBooking({
    super.key,
    required this.size,
    required this.imageAsset,
  });

  final Size size;
  final String imageAsset;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      height: size.height * 0.27,
      // width: 270,
      width: size.width * 0.66,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(
            blurRadius: 3.0,
            offset: Offset(0, 4),
          )
        ],
        image: const DecorationImage(
          image: AssetImage("assets/images/football_demo2.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
