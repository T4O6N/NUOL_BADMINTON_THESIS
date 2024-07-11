import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/model/owner/owner_model.dart';

class UpdateOwnerPage extends StatelessWidget {
  final OwnerModel owner;
  final TextEditingController usernameController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;
  final OwnerController ownerController = Get.put(OwnerController());

  UpdateOwnerPage({super.key, required this.owner})
      : usernameController = TextEditingController(text: owner.username),
        phoneController = TextEditingController(text: owner.phone),
        passwordController = TextEditingController(text: owner.password);

  void updateOwner(BuildContext context) {
    final updatedOwner = owner.copyWith(
      username: usernameController.text,
      phone: phoneController.text,
      password: passwordController.text,
    );

    ownerController.updateOwner(updatedOwner).then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Owner updated successfully')),
      );
      Get.back(); // Navigate back to Owner Management page
    }).catchError((error) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to update owner')),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update Owner')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.phone),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => updateOwner(context),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: const TextStyle(fontSize: 18),
              ),
              child: const Text('Update Owner'),
            ),
          ],
        ),
      ),
    );
  }
}
