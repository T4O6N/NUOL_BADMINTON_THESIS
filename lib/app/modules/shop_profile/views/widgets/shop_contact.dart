import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';

class ShopContact extends StatelessWidget {
  const ShopContact({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ເດີ່ນເຕະບານຮ້ອງຄ້າ",
            style: TextStyle(fontSize: 24, fontFamily: 'NotoSansLao'),
          ),
          Row(
            children: [
              Text(
                "ຕິດຕໍ່ພົວພັນ:  ",
                style: TextStyle(fontFamily: 'NotoSansLao'),
              ),
              Text(
                "020 58518209",
                style: TextStyle(fontFamily: 'NotoSansLao', color: AppColors.primaryColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
