import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_detail/views/widgets/date_time_picker.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_detail/views/widgets/select_number.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_detail/views/widgets/selected_list.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_profile/views/shop_profile_view.dart';
import '../controllers/shop_detail_controller.dart';

class ShopDetailView extends GetView<ShopDetailController> {
  const ShopDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ShopDetailController());
    // bool isChecked = false;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (controller) {
            return GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.green,
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: GestureDetector(
              onTap: () {
                Get.to(const ShopProfileView());
              },
              child: Container(
                  width: size.width * 0.23,
                  decoration: BoxDecoration(color: AppColors.primaryColor, borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text("ຂໍ້ມູນຮ້ານ"),
                      SvgPicture.asset(AppImagesSvg.exclamationIcon),
                    ],
                  )),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/images/bath_demo.png",
                      ),
                      fit: BoxFit.fill)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[Text("ເດີ່ນເຕະບານຮ້ອງຄ້າ", style: TextStyle(fontSize: 24)), DateTimePicker()],
              ),
            ),
            Row(
              children: [
                SvgPicture.asset(AppImagesSvg.positionIcon),
                const SizedBox(width: 10),
                const Text("ບ້ານ ຊຽງຍືນ, ເມືອງ ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ"),
              ],
            ),
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "ຕາຕະລາງເດີ່ນ C",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                SelectNumber(),
              ],
            ),
            const SelectedList()
          ],
        ),
      ),
    );
  }
}
