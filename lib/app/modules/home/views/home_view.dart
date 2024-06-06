import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/filter_sheet.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/list_booking.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/search_Text_widget.dart';
import 'package:nuol_badminton_thesis/app/widgets/custom_scroll_behavior.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);
  @override
  final HomeController controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // body: NestedScrollView(
      //   // floatHeaderSlivers: true,
      //   headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
      //     SliverAppBar(
      //       snap: true,
      //       floating: true,
      //       titleSpacing: 20,
      //       elevation: 0,
      //       centerTitle: false,
      //       backgroundColor: Colors.white,
      //       title: Row(
      //         children: [
      //           CircleAvatar(
      //             radius: .025 * heightMedia,
      //             backgroundImage: const AssetImage("assets/images/profile_demo.jpeg"),
      //           ),
      //           const SizedBox(width: 10),
      //           const Text(
      //             "020 58518209",
      //             style: TextStyle(
      //               color: Colors.black,
      //               fontFamily: 'NotoSansLao',
      //               fontSize: 14,
      //             ),
      //           ),
      //         ],
      //       ),
      //       actions: [
      //         Padding(
      //           padding: const EdgeInsets.only(right: 20),
      //           child: GestureDetector(
      //               onTap: () {},
      //               child: SvgPicture.asset(
      //                 AppImagesSvg.notificationIcon,
      //               )),
      //         ),
      //       ],
      //       bottom: PreferredSize(
      //         preferredSize: Size.fromHeight(heightMedia * 0.15),
      //         child: Padding(
      //           padding: const EdgeInsets.only(bottom: 0, right: 20, left: 20),
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               Row(
      //                 children: [
      //                   const SearchTextField(
      //                       labelText: "Search",
      //                       iconSuffix: Icon(
      //                         Icons.search_outlined,
      //                         color: Colors.green,
      //                       )),
      //                   const SizedBox(
      //                     width: 10,
      //                   ),
      //                   GestureDetector(
      //                     onTap: () {
      //                       showModalBottomSheet(
      //                         backgroundColor: Colors.white,
      //                         isScrollControlled: true,
      //                         context: context,
      //                         builder: (BuildContext context) {
      //                           return const FilterSheet();
      //                         },
      //                       );
      //                     },
      //                     child: Container(
      //                       height: 60,
      //                       width: 60,
      //                       decoration: BoxDecoration(
      //                         color: AppColors.secondaryColor,
      //                         borderRadius: BorderRadius.circular(15),
      //                       ),
      //                       child: Center(
      //                         child: SvgPicture.asset(
      //                           AppImagesSvg.filterIcon02,
      //                           height: 25,
      //                           width: 25,
      //                         ),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //               const SizedBox(
      //                 height: 20,
      //               ),
      //               const Text(
      //                 "ສະແດງຜົນຈາກລາຍການເດີ່ນທີ່ວ່າງ",
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   fontWeight: FontWeight.w700,
      //                   fontFamily: 'NotoSansLao',
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "ເດີ່ນຕີດອກປີກໄກ່ ສະໂມສອນເສດຖາ",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.admin_panel_settings, color: Colors.green),
                title: const Text("ພະນັກງານເດີ່ນ"),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.person_pin_circle_rounded, color: Colors.green),
                title: const Text("ເຈົ້າຂອງ"),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: DoubleBackToCloseApp(
        snackBar: const SnackBar(
          content: Text('Tap back again to leave'),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: ScrollConfiguration(
            behavior: CustomScrollBehavior(),
            child: ListBooking(listNum: 24),
          ),
        ),
      ),
    );
  }
}
