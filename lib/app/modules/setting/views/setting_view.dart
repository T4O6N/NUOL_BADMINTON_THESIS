import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/setting/views/widgets/menu_notification.dart';

import '../controllers/setting_controller.dart';
import 'widgets/setting_menu.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (controller) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Get.back();
              },
              color: AppColors.primaryColor,
            );
          },
        ),
        centerTitle: false,
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        title: const Text('Setting'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Column(
          children: [
            const MenuNotificatoin(
              assetSvg: AppImagesSvg.notificationIcon,
              subTitle: 'ການແຈ້ງເຕືອນ',
              title: 'ສຽງແຈ້ງເຕືອນຂໍ້ຄວາມ ',
            ),
            SettingMenu(
              assetSvg: AppImagesSvg.languagesIcon,
              title: 'ພາສາຂອງ App',
              subTitle: '(ພາສາລາວ) ເປັນພາສາປະຈຸບັນຂອງແອັບ',
              onTap: () {},
            ),
            SettingMenu(
              assetSvg: AppImagesSvg.notebookIcon,
              title: 'ຄູ່ມືການໃຊ້ງານ ແລະ ຂໍ້ມູນຂອງ App',
              subTitle: 'ຄູ່ມີການໃຊ້ງານ ຂໍ້ມູນແອັບ',
              onTap: () {},
            ),
            SettingMenu(
              assetSvg: AppImagesSvg.bookSucurityIcon,
              title: 'ນະໂຍບາຍຄວາມເປັນສ່ວນຕົວ ',
              subTitle: 'ຄວາມເປັນສ່ວນຕົວຂອງຂໍ້ມູນ',
              onTap: () {},
            ),
            SettingMenu(
              assetSvg: AppImagesSvg.requirementIcon,
              title: 'ຂໍ້ກຳນົດໃນການໃຫ້ບໍລິການ',
              subTitle: 'ຂໍ້ກຳນົດການໃຫ້ບໍລິການ ກຳນົດການໃຊ້ບໍລິການ ເງື່ອນໄຂລົງທະບຽນ ...',
              onTap: () {},
            ),
            SettingMenu(
              assetSvg: AppImagesSvg.versionIcon,
              title: 'Version App ເປັນ About app',
              subTitle: 'ເວີຊັນ 0.0.0',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
