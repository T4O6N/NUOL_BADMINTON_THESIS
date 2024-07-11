import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/views/admin_login_and_register/admin_login_page.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_management_admin_controller.dart';

import 'package:nuol_badminton_thesis/app/modules/owner/model/admin_model/param_create_admin_model.dart';

class AdminRegisterPage extends StatelessWidget {
  final OwnerManagementAdminController adminController = Get.put(OwnerManagementAdminController());

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  AdminRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "ລົງທະບຽນແອັດມິນ",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text(
              //   'ລົງທະບຽນແອັດມິນ',
              //   style: TextStyle(
              //     fontSize: 32,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.green,
              //   ),
              // ),
              const SizedBox(height: 40),
              _buildTextField(
                controller: usernameController,
                label: 'Username',
                icon: Icons.person,
              ),
              const SizedBox(height: 20),
              _buildTextField(
                controller: phoneController,
                label: 'Phone',
                icon: Icons.phone,
                keyboardType: TextInputType.phone,
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
                    final newAdmin = ParamCreateAdminModel(
                      username: usernameController.text,
                      phone: phoneController.text,
                      password: passwordController.text,
                    );
                    adminController.createAdmin(newAdmin);
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
                    'ລົງທະບຽນ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Center(
              //   child: TextButton(
              //     onPressed: () {
              //       Get.to(() => AdminLoginPage());
              //     },
              //     child: const Text(
              //       "Already have an account? Login",
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
