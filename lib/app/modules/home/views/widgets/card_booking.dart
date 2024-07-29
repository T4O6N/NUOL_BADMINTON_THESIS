//card booking for home page
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/badminton_court_model.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_detail/views/widgets/shop_view.dart';
import 'package:nuol_badminton_thesis/app/widgets/getImageProvider.dart';

class CardBooking extends StatelessWidget {
  const CardBooking({
    super.key,
    required this.price,
    required this.imageAsset,
    required this.court,
    required this.indexCourt,
    required this.courtIndex,
    required this.promotion,
  });

  final String imageAsset;
  final String court;
  final String price;
  final int indexCourt;
  final String promotion;
  final BadmintonCourtModel courtIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Get.to(ShopView(court: courtIndex));
      },
      child: Container(
        width: double.infinity,
        height: .35 * size.height,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
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
                  image: getImageProvider(imageAsset),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              height: .13 * size.height,
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
                    Row(
                      children: [
                        const Text('ຄອດ: '),
                        Text(
                          court,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('ລາຄາ: '),
                        Text(
                          price,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(' / ຊົ່ວໂມງ'),
                      ],
                    ),
                    Row(
                      children: [
                        const Text('ສ່ວນຫລຸດ: '),
                        Text(
                          promotion,
                          style: const TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // ),
    );
  }
}

//test push