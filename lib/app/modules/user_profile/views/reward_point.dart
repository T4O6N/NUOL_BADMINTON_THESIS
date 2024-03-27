import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/list_detail.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/total_point_container.dart';

class RewardPoint extends StatelessWidget {
  const RewardPoint({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (controller) {
              return IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Get.back();
                },
                color: Colors.green,
              );
            },
          ),
          centerTitle: false,
          // automaticallyImplyLeading: false,
          // leadingWidth: 5,
          titleSpacing: 1,
          elevation: 0,
          backgroundColor: Colors.white,
          titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700, fontFamily: 'NotoSansLao'),
          title: const Text(
            "ຄະແນນຂອງທ່ານ",
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(100),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ຄະແນນສະສົມຈາກການຈອງເດີ່ນ",
                      style: TextStyle(
                        fontFamily: 'NotoSansLao',
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TotalPointContainer(
                      labelPoint: 190,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "ລາຍການແລກລາງວັນ",
                      style: TextStyle(fontFamily: 'NotoSansLao', fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: 2,
                      width: 150,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const ListDetailPoint(),
      ),
    );
  }
}
