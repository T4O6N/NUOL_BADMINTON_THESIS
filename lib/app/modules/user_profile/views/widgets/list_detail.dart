import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/card_point.dart';

class ListDetailPoint extends StatelessWidget {
  const ListDetailPoint({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return const Column(
            children: [
              CardPoint(
                descrition: '1 ຄະແນນສະສົມຄົບ 100 ຄະແນນ ສາມາດແລກເປັນຄູປອງສ່ວນຫຼຸດ ການຈອງເດີ່ນ',
                imageAsset: 'assets/images/image_demo_pro.png',
              ),
              CardPoint(
                descrition: '2 ແລກເປັນຄູປອງສ່ວນຫຼຸດ',
                imageAsset: 'assets/images/exchange_demo.png',
              ),
            ],
          );
        });
  }
}
