import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/size_screen_constants.dart';

class ListHistory extends StatelessWidget {
  const ListHistory({
    super.key,
    required this.price,
    required this.itemCount,
    required this.dateDemo,
    required this.typeDern,
    required this.numberDern,
    required this.durationRent,
    required this.nameShop,
    required this.depositOrder,
  });
  final String price;
  final int itemCount;
  final String dateDemo;
  final String typeDern;
  final String numberDern;
  final String durationRent;
  final String nameShop;
  final String depositOrder;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width <= SizeScreenConstants.sizeScreen ? 15 : 20, vertical: 5),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(.1),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(2, -1), // changes position of shadow
                  )
                ]),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: Get.width <= SizeScreenConstants.sizeScreen ? 10 : 20,
                      bottom: 5,
                      top: 10,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          nameShop,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'NotoSansLao'),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ປະເພດເດີ່ນ",
                                  style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "ເດີ່ນ",
                                  style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "ວັນທີ່",
                                  style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "ເວລາທີ່ຈອງ",
                                  style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "ລາຄາ",
                                  style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  "ໄດ້ມັດຈຳ",
                                  style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("  :  ", style: TextStyle(fontSize: 18)),
                                Text("  :  ", style: TextStyle(fontSize: 18)),
                                Text("  :  ", style: TextStyle(fontSize: 18)),
                                Text("  :  ", style: TextStyle(fontSize: 18)),
                                Text("  :  ", style: TextStyle(fontSize: 18)),
                                Text("  :  ", style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            SizedBox(
                              width: Get.width <= 600 ? size.width * .57 : size.width * .58,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    typeDern,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    numberDern,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    dateDemo,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    durationRent,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "$price₭",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontFamily: 'NotoSansLao',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: AppColors.primaryColor,
                                    ),
                                  ),
                                  Text(
                                    "$depositOrder₭",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontFamily: 'NotoSansLao',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
