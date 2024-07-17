import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/views/admin_login_and_register/admin_login_page.dart';
import 'package:nuol_badminton_thesis/app/modules/home/views/widgets/list_booking.dart';
import 'package:nuol_badminton_thesis/app/modules/login/views/login_view.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              CircleAvatar(
                backgroundImage: const AssetImage(AppImages.whiteJongLogo),
                backgroundColor: Colors.green[500],
                radius: 80,
              ),
              const SizedBox(height: 50),
              ListTile(
                leading: const Icon(Icons.stadium, size: 30, color: Colors.green),
                title: const Text(
                  "ເຈົ້າຂອງເດີ່ນ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Get.to(const OwnerDashboardView());
                  Get.to(LoginView());
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_pin_circle_rounded, size: 30, color: Colors.green),
                title: const Text(
                  "ພະນັກງານເດີ່ນ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  // Get.to(const AdminDashboardView());
                  // Get.to(LoginView());
                  Get.to(AdminLoginPage());
                },
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
            child: const ListBooking(),
          ),
        ),
      ),
    );
  }
}
