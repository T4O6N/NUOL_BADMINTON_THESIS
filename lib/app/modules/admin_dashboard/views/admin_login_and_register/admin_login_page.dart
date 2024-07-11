import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/constants/app_image.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/views/admin_dashboard_view.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/views/admin_login_and_register/admin_register_page.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_management_admin_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/admin_management_page.dart';

class AdminLoginPage extends StatelessWidget {
  final OwnerManagementAdminController adminController = Get.put(OwnerManagementAdminController());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void loginForAdmin(BuildContext context) {
    final username = usernameController.text;
    final password = passwordController.text;

    final admin = adminController.adminsList.firstWhereOrNull(
      (adm) => adm.username == username && adm.password == password,
    );
    if (admin != null) {
      // Get.to(AdminManagementPage()); // Navigate to Owner Management Page
      Get.to(const AdminDashboardView());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid username or password')),
      );
    }
  }

  AdminLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const Text(
              //   'Admin Login',
              //   style: TextStyle(
              //     fontSize: 32,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.green,
              //   ),
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
              const SizedBox(height: 40),
              _buildTextField(
                controller: usernameController,
                label: 'Username',
                icon: Icons.person,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: passwordController,
                label: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                    // After successful login, navigate to AdminManagementPage
                    // Get.to(() => AdminManagementPage());
                    loginForAdmin(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  child: const Text(
                    'ເຂົ້າສູ່ລະບົບ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Center(
              //   child: TextButton(
              //     onPressed: () {
              //       Get.to(() => AdminRegisterPage());
              //     },
              //     child: const Text(
              //       "Don't have an account? Register",
              //       style: TextStyle(color: Colors.black),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.green),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
