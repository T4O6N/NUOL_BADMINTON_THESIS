import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner_model/owner/owner_model.dart';

class UpdateOwnerPage extends StatelessWidget {
  final OwnerController ownerController = Get.find<OwnerController>();
  final OwnerModel owner;

  UpdateOwnerPage({super.key, required this.owner});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    usernameController.text = owner.username;
    phoneController.text = owner.phone;
    passwordController.text = owner.password;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ແກ້ໄຂຂໍ້ມູນ',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
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
                    final updatedOwner = OwnerModel(
                      id: owner.id,
                      username: usernameController.text,
                      phone: phoneController.text,
                      password: passwordController.text,
                      isActive: owner.isActive,
                      createdAt: owner.createdAt,
                      updatedAt: owner.updatedAt,
                    );
                    ownerController.updateOwner(updatedOwner);
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
                    'ແກ້ໄຂ',
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
