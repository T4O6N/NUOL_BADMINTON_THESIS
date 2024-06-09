import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/admin_user_profile_controller.dart';

class AdminUserProfileView extends GetView<AdminUserProfileController> {
  const AdminUserProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AdminUserProfileView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AdminUserProfileView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
