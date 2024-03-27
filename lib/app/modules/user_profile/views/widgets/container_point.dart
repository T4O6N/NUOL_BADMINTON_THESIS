// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/reward_point.dart';

class ContainerPoint extends StatelessWidget {
  const ContainerPoint({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height * .05,
      width: width * .87,
      decoration: BoxDecoration(
        // color: Colors.green,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(255, 169, 169, 169),
          width: 1,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  "Point: ",
                  style: TextStyle(fontFamily: 'Roboto'),
                ),
                Text(
                  "155",
                  style: TextStyle(color: Color.fromARGB(255, 77, 177, 81)),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Get.to(const RewardPoint());
            },
            child: const Icon(
              Icons.arrow_forward_ios,
              color: Color(0xffd00a950),
            ),
          )
        ],
      ),
    );
  }
}
