import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:nuol_badminton_thesis/app/constants/app_color.dart';
import 'package:nuol_badminton_thesis/app/modules/user_profile/views/widgets/textfield_edit_info.dart';

class EditUserProfile extends StatelessWidget {
  const EditUserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 2,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (controller) {
            return InkWell(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back,
                color: AppColors.primaryColor,
                size: 30,
              ),
            );
          },
        ),
        actions: const [
          Center(
            child: Text(
              "ສໍາເລັດ",
              style: TextStyle(color: AppColors.primaryColor, fontSize: 20),
            ),
          ),
          SizedBox(
            width: 50,
          )
        ],
        titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        title: const Text('Account info'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          height: size.height,
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
            elevation: 10,
            shadowColor: Colors.black.withOpacity(.8),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: Text(
                      "ແກ້ໄຂຂໍ້ມູນເພີ່ມເຕີມ",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  TextFiledEditInfo(
                    hintText: 'Taengmo keophakhoun',
                    icon: Icon(
                      Icons.person,
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                  ),
                  TextFiledEditInfo(
                    hintText: 'taengmokps2001@gmail.com',
                    icon: Icon(
                      Icons.email,
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                  ),
                  TextFiledEditInfo(
                    hintText: '+856  20 58518209',
                    icon: Icon(
                      Icons.phone,
                      color: Colors.grey,
                      size: 35,
                    ),
                  ),
                  TextFiledEditInfo(
                    hintText: 'ບ້ານມີໄຊ, ເມືອງຈັນທະບູລີ, ນະຄອນຫຼວງ',
                    icon: Icon(
                      Icons.location_on,
                      color: AppColors.primaryColor,
                      size: 35,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
