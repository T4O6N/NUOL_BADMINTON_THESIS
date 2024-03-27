import 'package:flutter/material.dart';
import 'container_date_time.dart';
import 'container_with_Image_booking.dart';
import 'container_with_padding.dart';

class BookingStackWidget extends StatelessWidget {
  const BookingStackWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // height: 280,
      height: size.height * 0.28,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 20, right: 20, top: 12),

      //make a stack widget
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          //layer 1
          ContainerDateTime(size: size),
          //layer 2
          Stack(
            children: [
              ContainerWithImageBooking(
                size: size,
                imageAsset: "assets/images/football_demo2.png",
              ),
              //add black color to blur container
              ContainerWithPadding(
                size: size,
                typePlayground: 'ເດີນເຕະບານຮ້ອງຄ້າ',
                durationRent: ' 16:00 - 17:00',
                itemCount: 0,
                nameShop: 'ບ້ານ ຊຽງຍືນ, ເມືອງ ຈັນທະບູລີ, ນະຄອນຫຼວງວຽງຈັນ',
                numberPlayground: 'A',
                price: ' 150.000₭',
                depositOrder: '50.000₭',
              )
            ],
          ),
        ],
      ),
    );
  }
}
