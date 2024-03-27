import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_profile/views/widgets/card_detail_shop.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_profile/views/widgets/indicator_list.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_profile/views/widgets/shop_contact.dart';
import '../controllers/shop_profile_controller.dart';

class ShopProfileView extends GetView<ShopProfileController> {
  const ShopProfileView({Key? key}) : super(key: key);
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
          titleSpacing: 1,
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'NotoSansLao'),
          title: const Text('ຂໍ້ມູນຂອງຮ້ານ'),
          centerTitle: false,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(MediaQuery.of(context).size.height * .31),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [IndicatorList(), ShopContact()],
              ),
            ),
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(child: CardDetailShop()),
        ));
  }
}
