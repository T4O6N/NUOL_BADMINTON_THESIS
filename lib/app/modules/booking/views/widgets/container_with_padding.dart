// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';

class ContainerWithPadding extends StatelessWidget {
  const ContainerWithPadding({
    super.key,
    required this.size,
    required this.price,
    required this.itemCount,
    required this.typePlayground,
    required this.numberPlayground,
    required this.durationRent,
    required this.nameShop,
    required this.depositOrder,
  });

  final Size size;
  final String price;
  final int itemCount;

  final String typePlayground;
  final String numberPlayground;
  final String durationRent;
  final String nameShop;
  final String depositOrder;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 250,
      height: size.height * 0.27,
      // width: 270,
      width: size.width * 0.66,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(.5),
        borderRadius: BorderRadius.circular(15),
      ),
      //add text to container
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              typePlayground,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'NotoSansLao',
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImagesSvg.positionIcon,
                  color: Colors.red,
                  height: 12,
                  width: 15,
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: size.width * .55,
                  child: Text(
                    nameShop,
                    style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 10, fontFamily: 'NotoSansLao', overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ເດີ່ນ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'NotoSansLao',
                      ),
                    ),
                    Text(
                      "ເວລາ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'NotoSansLao',
                      ),
                    ),
                    Text(
                      "ລາຄາ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'NotoSansLao',
                      ),
                    ),
                    Text(
                      "ມັດຈຳ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'NotoSansLao',
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ":    $numberPlayground",
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'NotoSansLao',
                        ),
                      ),
                      SizedBox(
                        width: size.width * .43,
                        child: Text(
                          ":  $durationRent",
                          style: const TextStyle(fontWeight: FontWeight.w400, color: Colors.white, fontSize: 14, fontFamily: 'NotoSansLao', overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Row(
                        children: [
                          const Text(
                            ":",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'NotoSansLao',
                            ),
                          ),
                          Text(
                            "  $price",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              fontSize: 14,
                              fontFamily: 'NotoSansLao',
                            ),
                          ),
                        ],
                      ),
                      Text(
                        ":   $depositOrder",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'NotoSansLao',
                        ),
                      ),
                    ],
                  ),
                ),
                //add text to container
              ],
            ),

            //end code
          ],
        ),
      ),
    );
  }
}
