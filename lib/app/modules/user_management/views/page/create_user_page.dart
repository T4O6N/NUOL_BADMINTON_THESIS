import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/controllers/user_management_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/model/admin_model.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/model/owner_model.dart';

class CreateUserPage extends StatelessWidget {
  final UserManagementController controller = Get.find();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController roleController = TextEditingController();

  CreateUserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create User'),
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
            TextField(
              controller: roleController,
              decoration: const InputDecoration(labelText: 'Role (admin/owner)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final role = roleController.text.toLowerCase();
                if (role == 'admin') {
                  AdminModel newAdmin = AdminModel(
                    id: '',
                    username: usernameController.text,
                    phone: phoneController.text,
                    password: passwordController.text,
                    isActive: true,
                    role: 'admin',
                  );
                  controller.createAdmin(newAdmin);
                } else if (role == 'owner') {
                  OwnerModel newOwner = OwnerModel(
                    id: '',
                    username: usernameController.text,
                    phone: phoneController.text,
                    password: passwordController.text,
                    isActive: true,
                    role: 'owner',
                  );
                  controller.createOwner(newOwner);
                } else {
                  Get.snackbar('Error', 'Invalid role specified');
                }
                Get.back();
              },
              child: const Text('Create User'),
            ),
          ],
        ),
      ),
    );
  }
}
