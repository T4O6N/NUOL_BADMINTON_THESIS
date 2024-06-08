import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/choose_schedule/views/choose_schedule_view.dart';
import 'package:nuol_badminton_thesis/app/modules/home/controllers/home_controller.dart';
import 'package:nuol_badminton_thesis/app/routes/app_pages.dart';
import 'package:nuol_badminton_thesis/app/widgets/booking_botton.dart';

import '../controllers/shop_detail_controller.dart';

class ShopDetailView extends GetView<ShopDetailController> {
  const ShopDetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ShopDetailController controller = Get.put(ShopDetailController());
    final HomeController homeController = Get.put(HomeController());
    Size size = MediaQuery.of(context).size;
    final courtIndex = controller.court;
    final court = homeController.court[courtIndex];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
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
        title: const Text("ລາຍລະອຽດ"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: size.height * .24,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/court.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text("ຄອດ :"),
                        Text(
                          " $court",
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "ລາຄາ : 80.000 ₭ ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "/ ຊົ່ວໂມງ",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  SvgPicture.asset(AppImagesSvg.positionIcon),
                  const SizedBox(width: 10),
                  const Text(
                    "ບ້ານ ບຶງຂະຫຍອງ ເມືອງ ສີສັດຕະນາກ ແຂວງ ນະຄອນຫຼວງວຽງຈັນ",
                  ),
                ],
              ),

              const Text(
                "     ສາໜາມໃນຮົ່ມແມ່ນເປັນທີ່ນິຍົມຫຼາຍເພາະວ່າສະພາບອາກາດສາມາດຄວບຄຸມໄດ້. ມີການຕິດຕັ້ງແສງໄຟຢ່າງພຽງພໍເພື່ອໃຫ້ຜູ້ຫຼິ້ນສາມາດເບິ່ງເຫັນລູກດອກໄດ້ຢ່າງຊັດເຈນ ແລະ ຫຼິ້ນໄດ້ເຕັມທີ່ຂອງເຂົາເຈົ້າ.ນອກຈາກນັ້ນຍັງມີສິ່ງອໍານວຍຄວາມສະດວກອື່ນໆເຊັ່ນ: ບ່ອນນັ່ງສໍາລັບຜູ້ຊົມ. ພື້ນທີ່ພັກຜ່ອນ ແລະ ຫ້ອງປ່ຽນເຄື່ອງ ເພື່ອໃຫ້ຜູ້ຫຼິ້ນ ແລະ ຜູ້ຊົມໄດ້ຮັບປະສົບການທີ່ດີທີ່ສຸດເມື່ອມາເບິ່ງ ແລະ ຫຼິ້ນກິລາແບດມິນຕັນ",
                style: TextStyle(color: Colors.grey),
              ),
              // const SelectedList()
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "ພາບລວມ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.23,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.courtPic.length,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 210,
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        image: DecorationImage(
                          image: AssetImage(controller.courtPic[index]),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 10,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              BookingButton(
                onTap: () {
                  Get.toNamed(
                    Routes.CHOOSE_SCHEDULE,
                    arguments: courtIndex,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
