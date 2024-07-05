import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/booking/views/booking_view.dart';
import 'package:nuol_badminton_thesis/app/modules/history/views/history_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/home_view.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/user_profile_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  DashboardView({Key? key}) : super(key: key);
  @override
  final DashboardController controller = Get.put(DashboardController());
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return PopScope(
      canPop: false,
      child: Scaffold(
        extendBody: true,
        appBar: AppBar(backgroundColor: Colors.white, toolbarHeight: 0, elevation: 0),
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            const BookingView(),
            const HistoryView(),
            const UserProfileView(),
          ],
        ),
        // bottomNavigationBar: BottomAppBar(
        //   notchMargin: 10,
        //   elevation: 0,
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(
        //       horizontal: 35,
        //     ),
        //     child: Obx(
        //       () => Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //         children: [
        //           _buttomAppBarItem(context, icon: AppImagesSvg.homeIcon, page: 0, label: "ໜ້າຫຼັກ"),
        //           _buttomAppBarItem(context, icon: AppImagesSvg.bookingIcon, page: 1, label: "ປະຫວັດການຈອງ"),
        //           _buttomAppBarItem(context, icon: AppImagesSvg.historyIcon, page: 2, label: "ປະຫວັດການຊຳລະ"),
        //           // _buttomAppBarItem(context, icon: AppImagesSvg.userProfileIcon, page: 3, label: "ໂປຮຟາຍ"),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [BoxShadow(blurRadius: 10, spreadRadius: 1, color: Colors.black12)], // Adjust shadow properties as needed
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              backgroundColor: Colors.white,
              fixedColor: Colors.green,
              iconSize: 25,
              selectedLabelStyle: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
              showUnselectedLabels: true,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImagesSvg.homeIcon,
                    height: size.height * 0.03,
                  ),
                  label: "ໜ້າຫຼັກ",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImagesSvg.bookingIcon,
                    height: size.height * 0.03,
                  ),
                  label: "ປະຫວັດການຈອງ",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppImagesSvg.historyIcon,
                    height: size.height * 0.03,
                  ),
                  label: "ປະຫວັດການຊຳລະ",
                ),
              ],
              onTap: (value) => controller.changeTabIndex(value),
              currentIndex: controller.tabIndex,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttomAppBarItem(BuildContext context, {required String icon, required page, required label}) {
    return InkWell(
      onTap: () => controller.goToTab(page),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            child: SvgPicture.asset(
              icon,
              //TODO: research what happen with this
              color: controller.currentPage.value == page ? const Color(0xFF00A950) : const Color(0xFF00A950).withOpacity(0.5),
            ),
          ),
          Text(
            label,
            style: TextStyle(color: controller.currentPage.value == page ? Colors.green : Colors.grey, fontWeight: controller.currentPage.value == page ? FontWeight.bold : null, fontSize: 12),
          )
        ],
      ),
    );
  }
}
