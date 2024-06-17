//card booking for home page
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/routes/app_pages.dart';

class CardBooking extends StatelessWidget {
  const CardBooking({
    super.key,
    required this.price,
    required this.imageAsset,
    required this.court,
    required this.indexCourt,
  });

  final String imageAsset;
  final String court;
  final String price;
  final int indexCourt;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.toNamed(
          Routes.SHOP_DETAIL,
          arguments: indexCourt,
        );
      },
      child: Container(
        width: double.infinity,
        height: .30 * size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              height: .20 * size.height,
              padding: EdgeInsets.zero,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  //image must scale width screen 500 * 250 pixel
                  image: AssetImage(imageAsset),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: .10 * size.height,
              padding: EdgeInsets.zero,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      court,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: double.infinity,
            //   decoration: BoxDecoration(color: Colors.black.withOpacity(.5), borderRadius: BorderRadius.circular(15)),
            // ),
            // Padding(
            //   padding: EdgeInsets.only(left: size.width * .03, bottom: size.width * .03, right: size.width * .02),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.only(bottom: 10),
            //         child: SizedBox(
            //           width: size.width * .79,
            //           child: Text(
            //             namePlace,
            //             style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
            //           ),
            //         ),
            //       ),
            //       Row(
            //         children: [
            //           SvgPicture.asset(
            //             AppImagesSvg.positionIcon,
            //             height: 25,
            //           ),
            //           SizedBox(
            //             width: size.width * .74,
            //             child: Text(
            //               location,
            //               style: const TextStyle(color: Colors.white, fontSize: 15, overflow: TextOverflow.ellipsis),
            //             ),
            //           ),
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Row(
            //         children: [
            //           SvgPicture.asset(AppImagesSvg.startIcon, height: 25),
            //           Text(
            //             point.toString(),
            //             style: const TextStyle(color: Colors.white, fontSize: 15),
            //           ),
            //           const SizedBox(width: 10),
            //           Text(
            //             date,
            //             style: const TextStyle(color: Colors.white, fontSize: 15),
            //           ),
            //           const SizedBox(width: 10),
            //           Text(
            //             price,
            //             style: const TextStyle(color: Colors.white, fontSize: 15),
            //           ),
            //         ],
            //       ),
            //       const SizedBox(
            //         height: 5,
            //       ),
            //       Row(children: [
            //         ButtonTime(
            //           durationLabel: '16:00-17:00',
            //           color: Colors.green,
            //         ),
            //         ButtonTime(
            //           durationLabel: '17:00-18:00',
            //           color: AppColors.secondaryColor,
            //         ),
            //         ButtonTime(
            //           durationLabel: '18:00-19:00',
            //           color: AppColors.secondaryColor,
            //         ),
            //       ])
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      // ),
    );
  }
}

//test push