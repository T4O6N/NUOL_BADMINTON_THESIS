import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/controllers/user_management_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/model/admin_model.dart';

class AdminDetailPage extends StatelessWidget {
  final UserManagementController controller = Get.find();
  final AdminModel admin;

  AdminDetailPage({super.key, required this.admin});

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    usernameController.text = admin.username;
    phoneController.text = admin.phone;
    passwordController.text = admin.password;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
            ),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                AdminModel updatedAdmin = admin.copyWith(
                  username: usernameController.text,
                  phone: phoneController.text,
                  password: passwordController.text,
                );
                controller.updateAdmin(admin.id, updatedAdmin);
                Get.back();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
