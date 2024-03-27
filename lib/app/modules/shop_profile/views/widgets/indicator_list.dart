import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/size_screen_constants.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorList extends StatelessWidget {
  const IndicatorList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController(viewportFraction: 1);
    Size size = MediaQuery.of(context).size;
    return SizedBox(
        // height: 230,
        height: size.height * 0.25,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            PageView.builder(
              itemCount: 4,
              controller: pageController,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/football_demo2.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: Get.width <= SizeScreenConstants.sizeScreen ? size.height * 0.25 / 1.2 : size.height * 0.25 / 1.15,
              child: SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: const WormEffect(dotColor: Color.fromARGB(255, 234, 234, 234), activeDotColor: AppColors.primaryColor, dotHeight: 15, dotWidth: 15),
              ),
            ),
          ],
        ));
  }
}
