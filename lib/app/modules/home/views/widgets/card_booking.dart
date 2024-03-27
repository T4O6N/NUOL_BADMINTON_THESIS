//card booking for home page
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_detail/views/shop_detail_view.dart';
import 'package:nuol_badminton_thesis/app/widgets/button_time.dart';

class CardBooking extends StatelessWidget {
  const CardBooking({
    super.key,
    required this.namePlace,
    required this.location,
    required this.point,
    required this.date,
    required this.price,
    required this.imageAsset,
  });
  final String namePlace;
  final String imageAsset;
  final String location;
  final int point;
  final String date;
  final String price;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(const ShopDetailView());
      },

      child: SizedBox(
        width: double.infinity,
        height: .25 * size.height,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  //image must scale width screen 500 * 250 pixel
                  image: AssetImage(imageAsset),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.black.withOpacity(.5), borderRadius: BorderRadius.circular(15)),
            ),
            Padding(
              padding: EdgeInsets.only(left: size.width * .03, bottom: size.width * .03, right: size.width * .02),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: SizedBox(
                      width: size.width * .79,
                      child: Text(
                        namePlace,
                        style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        AppImagesSvg.positionIcon,
                        height: 25,
                      ),
                      SizedBox(
                        width: size.width * .74,
                        child: Text(
                          location,
                          style: const TextStyle(color: Colors.white, fontSize: 15, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(AppImagesSvg.startIcon, height: 25),
                      Text(
                        point.toString(),
                        style: const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        date,
                        style: const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        price,
                        style: const TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(children: [
                    ButtonTime(
                      durationLabel: '16:00-17:00',
                      color: Colors.green,
                    ),
                    ButtonTime(
                      durationLabel: '17:00-18:00',
                      color: AppColors.secondaryColor,
                    ),
                    ButtonTime(
                      durationLabel: '18:00-19:00',
                      color: AppColors.secondaryColor,
                    ),
                  ])
                ],
              ),
            )
          ],
        ),
      ),
      // ),
    );
  }
}

//test push