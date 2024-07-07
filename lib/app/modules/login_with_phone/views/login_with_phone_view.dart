import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/dashboard/views/dashboard_view.dart';
import 'package:nuol_badminton_thesis/app/modules/login_with_phone/views/otp_page.dart';
import 'package:nuol_badminton_thesis/app/widgets/botton_login.dart';

import '../controllers/login_with_phone_controller.dart';

class LoginWithPhoneView extends GetView<LoginWithPhoneController> {
  const LoginWithPhoneView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final LoginWithPhoneController loginPhoneController = Get.put(LoginWithPhoneController());
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 35),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage(AppImages.whiteJongLogo),
                      backgroundColor: Colors.green[500],
                      radius: 80,
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'ເດີ່ນຕີດອກປີກໄກ່ສະໂມສອນເສດຖ້າ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 22),
                    TextFormField(
                      cursorColor: Colors.blue,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        isDense: false,
                        hintStyle: TextStyle(
                          fontFamily: 'NotoSansLao',
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade600,
                          fontSize: 15,
                        ),
                        prefixIcon: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          width: size.width * .1,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2, color: Colors.green), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2, color: Colors.green), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2, color: Colors.red), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(width: 2, color: Colors.red), //<-- SEE HERE
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                    ),
                    const SizedBox(height: 70),
                    SizedBox(
                      height: 50,
                      child: ButtonLogin(
                        onPressed: () {
                          // if (formKey.currentState!.validate()) {
                          //   Get.to(OtpPage(onCompleted: (String value) {}, onChange: (String value) {}, phone: '', onSummit: () {}));
                          // }
                        },
                        label: 'Login',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
