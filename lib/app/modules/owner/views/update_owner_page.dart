import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner/owner_model.dart';

class UpdateOwnerPage extends StatelessWidget {
  final OwnerController ownerController = Get.find<OwnerController>();
  final OwnerModel owner;

  UpdateOwnerPage({required this.owner});

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
        title: const Text('Update Owner'),
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
                final updatedOwner = owner.copyWith(
                  username: usernameController.text,
                  phone: phoneController.text,
                  password: passwordController.text,
                );
                ownerController.updateOwner(updatedOwner);
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }
}
