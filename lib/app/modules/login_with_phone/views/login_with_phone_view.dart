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
    final formKey = GlobalKey<FormState>();
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
                      'Jong',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 22),
                    const Text(
                      'ລົງທະບຽນ ຫຼື ລົງຊື່ເຂົ້າໃຊ້ດ້ວຍເບີໂທລະສັບ',
                      style: TextStyle(
                        fontFamily: 'NotoSansLao',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 22),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        onChanged: (value) => loginPhoneController.mobile.value = value,
                        controller: loginPhoneController.phoneController,
                        maxLength: 8,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your phone number';
                          } else if (value.length < 8) {
                            return 'Please enter a valid phone number';
                          } else if (!['2', '5', '7', '9'].contains(value[0])) {
                            return 'Please enter a valid phone number';
                          }
                          return null;
                        },
                        keyboardType: TextInputType.number,
                        cursorColor: Colors.blue,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'XXXX XXXX',
                          isDense: false,
                          hintStyle: TextStyle(
                            fontFamily: 'NotoSansLao',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade600,
                            fontSize: 15,
                          ),
                          prefixIcon: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                            width: size.width * .32,
                            child: Row(
                              children: [
                                const Icon(Icons.phone),
                                Text(
                                  "(+856) 20",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey.shade600,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
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
                    ),
                    const SizedBox(height: 70),
                    SizedBox(
                      height: 50,
                      child: ButtonLogin(
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Get.to(OtpPage(onCompleted: (String value) {}, onChange: (String value) {}, phone: '', onSummit: () {}));
                          }
                        },
                        label: 'Submit',
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextButton(
                      onPressed: () {
                        Get.offAll(DashboardView());
                      },
                      child: const Text(
                        " Skip",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
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
