import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_detail/views/widgets/number_dern_text.dart';

class SelectNumber extends StatelessWidget {
  const SelectNumber({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "ເລືອກເດີ່ນ",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            _showModalBottomSheet(context);
          },
          child: SvgPicture.asset(
            AppImagesSvg.filterIcon,
            height: 40,
          ),
        )
      ],
    );
  }
}

Future _showModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      builder: (context) => SizedBox(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 6,
                    width: 80,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colors.grey),
                  ),
                  // const SizedBox(height: 20),
                  // ignore: prefer_const_constructors
                  Column(
                    children: const [
                      NumberDernText(labelText: 'ຕາຕະລາງເດີນ A'),
                      NumberDernText(labelText: 'ຕາຕະລາງເດີນ B'),
                      NumberDernText(labelText: 'ຕາຕະລາງເດີນ C'),
                      SizedBox(
                        height: 30,
                      )
                    ],
                  )
                ],
              ),
            ),
          ));
}
