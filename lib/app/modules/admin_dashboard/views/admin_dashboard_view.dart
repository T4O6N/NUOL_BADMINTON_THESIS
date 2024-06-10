import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_booking/bindings/admin_booking_binding.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_booking/views/admin_booking_view.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_user_profile/views/admin_user_profile_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/home_view.dart';
import 'package:nuol_badminton_thesis/app/modules/scan_qr/views/scan_qr_view.dart';

import '../controllers/admin_dashboard_controller.dart';

class AdminDashboardView extends GetView<AdminDashboardController> {
  const AdminDashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    AdminDashboardController controller = Get.put(AdminDashboardController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          const AdminUserProfileView(),
          ScanQrView(),
          const AdminBookingView(),
          // ScanQrView(),
          // const AdminUserProfileView(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 35,
          ),
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buttomAppBarItem(context, icon: AppImagesSvg.userProfileIcon, page: 0, label: "ໂປຮຟາຍ"),
                _buttomAppBarItem(context, icon: AppImagesSvg.cameraIcon, page: 1, label: "ສະແກນຄິວອາ"),
                _buttomAppBarItem(context, icon: AppImagesSvg.bookingIcon, page: 2, label: "ຈອງ"),

                // _buttomAppBarItem(context, icon: AppImagesSvg.userProfileIcon, page: 3, label: "ໂປຮຟາຍ"),
              ],
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
