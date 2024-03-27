import 'package:flutter/material.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_profile/views/widgets/menu_sport.dart';
import 'package:nuol_badminton_thesis/app/modules/shop_profile/views/widgets/position_shop.dart';

class CardDetailShop extends StatelessWidget {
  const CardDetailShop({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.all(14),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * .35,
                child: Card(
                  shadowColor: Colors.black,
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Material(
                        color: Colors.white,
                        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))),
                        shadowColor: Colors.black.withOpacity(.5),
                        elevation: 1.5,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          height: 50,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "ປະເພດກິລາ",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'NotoSansLao',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return const MenuSport(
                                assetImage: AppImagesSvg.ballICon,
                                text: 'Football',
                              );
                            }),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ການບໍລິການອື່ນໆ:"),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Text("ຮ້ານອາຫານ"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )),
          const PositionShop()
        ],
      ),
    );
  }
}
