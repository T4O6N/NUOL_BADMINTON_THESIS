import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/param/param_create_owner_model.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final OwnerController ownerController = Get.put(OwnerController());

  RegisterPage({super.key});

  void register(BuildContext context) {
    if (passwordController.text != confirmPasswordController.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Passwords do not match')),
      );
      return;
    }
    final owner = ParamCreateOwnerModel(
      username: usernameController.text,
      phone: phoneController.text,
      password: passwordController.text,
    );
    ownerController.createOwner(owner);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 60.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'ສ້າງ Account',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
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
              const SizedBox(height: 20),
              _buildTextField(
                controller: confirmPasswordController,
                label: 'Confirm Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              const SizedBox(height: 40),
              Center(
                child: ElevatedButton(
                  onPressed: () => register(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
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
