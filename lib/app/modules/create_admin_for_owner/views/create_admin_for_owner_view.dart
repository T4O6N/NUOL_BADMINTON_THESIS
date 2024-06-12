import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/create_admin_for_owner/views/widget/add_user_page.dart';
import 'package:nuol_badminton_thesis/app/modules/create_admin_for_owner/views/widget/edit_user_page.dart';

import '../controllers/create_admin_for_owner_controller.dart';

class CreateAdminForOwnerView extends GetView<CreateAdminForOwnerController> {
  const CreateAdminForOwnerView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    CreateAdminForOwnerController userController = Get.put(CreateAdminForOwnerController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin User Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: userController.users.length,
                itemBuilder: (context, index) {
                  final user = userController.users[index];
                  return ListTile(
                    title: Text(user.name),
                    subtitle: Text(user.email),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            Get.to(() => EditUserPage(user: user));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            userController.deleteUser(user.id);
                          },
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Get.to(() => AddUserPage());
            },
            child: const Text('Add User'),
          ),
        ],
      ),
    );
  }
}
