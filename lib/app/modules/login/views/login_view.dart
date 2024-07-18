import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/OwnerDashboard/views/owner_dashboard_view.dart';
import 'package:nuol_badminton_thesis/app/modules/login/views/register_page.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_management_admin_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/admin_management_page.dart';

import 'package:nuol_badminton_thesis/app/widgets/botton_login.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final OwnerController ownerController = Get.put(OwnerController());
  final OwnerManagementAdminController adminController = Get.put(OwnerManagementAdminController());

  void login(BuildContext context) {
    final username = usernameController.text;
    final password = passwordController.text;
    final owner = ownerController.ownersList.firstWhereOrNull(
      (owner) => owner.username == username && owner.password == password,
    );
    if (owner != null) {
      Get.to(const OwnerDashboardView());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  void loginForAdmin(BuildContext context) {
    final username = usernameController.text;
    final password = passwordController.text;

    final admin = adminController.adminsList.firstWhereOrNull(
      (adm) => adm.username == username && adm.password == password,
    );
    if (admin != null) {
      Get.to(AdminManagementPage()); // Navigate to Owner Management Page
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                      'ເດີ່ນຕີດອກປີກໄກ່ສະໂມສອນເສດຖາ',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',
                      ),
                    ),
                    const SizedBox(height: 22),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ຊື່ຜູ້ໃຊ້',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: usernameController,
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
                        // prefixIcon: Container(
                        //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        //   width: size.width * .1,

                        // ),
                        prefixIcon: const Icon(Icons.person, color: Colors.green),
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
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'ລະຫັດຜ່ານ',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
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
                        // prefixIcon: Container(
                        //   padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                        //   width: size.width * .1,
                        // ),
                        prefixIcon: const Icon(Icons.lock, color: Colors.green),
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
                          // Get.to(const UserManagementView());
                          login(context);
                        },
                        label: 'ເຂົ້າສູ້ລະບົບ',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextButton(
                      onPressed: () => Get.to(RegisterPage()), // Navigate to register page
                      child: const Text('Don\'t have an account? Register'),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     TextButton(
                    //       onPressed: () {
                    //         // Get.to(const AdminDashboardView());
                    //         Get.to(AdminLoginPage());
                    //       },
                    //       child: const Text("admin"),
                    //     ),
                    //     TextButton(
                    //       onPressed: () {
                    //         Get.to(const OwnerDashboardView());
                    //       },
                    //       child: const Text("owner"),
                    //     ),
                    //   ],
                    // ),
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
