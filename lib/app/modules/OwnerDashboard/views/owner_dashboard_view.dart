import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/create_admin_for_owner/views/create_admin_for_owner_view.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/owner_view.dart';

import '../controllers/owner_dashboard_controller.dart';

class OwnerDashboardView extends GetView<OwnerDashboardController> {
  const OwnerDashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OwnerDashboardController controller = Get.put(OwnerDashboardController());
    return Scaffold(
      body: PageView(
        controller: controller.pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          // const AdminUserProfileView(),
          OwnerView(),
          CreateAdminForOwnerView(),
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // _buttomAppBarItem(context, icon: AppImagesSvg.userProfileIcon, page: 0, label: "ໂປຮຟາຍ"),
                _buttomAppBarItem(context, icon: AppImagesSvg.homeIcon, page: 0, label: "ລາຍງານ"),
                _buttomAppBarItem(context, icon: AppImagesSvg.userProfileIcon, page: 1, label: "ສ້າງແອັດມິນ"),

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
