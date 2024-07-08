import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/views/page/admin_detail_page.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/views/page/create_user_page.dart';
import 'package:nuol_badminton_thesis/app/modules/user_management/views/page/owner_detail_page.dart';
import '../controllers/user_management_controller.dart';

class UserManagementView extends GetView<UserManagementController> {
  const UserManagementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final UserManagementController controller = Get.put(UserManagementController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Management'),
      ),
      body: Obx(() {
        return Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.adminList.length,
                itemBuilder: (context, index) {
                  final admin = controller.adminList[index];
                  return ListTile(
                    title: Text(admin.username),
                    subtitle: Text(admin.phone),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        controller.deleteAdmin(admin.id);
                      },
                    ),
                    onTap: () {
                      Get.to(() => AdminDetailPage(admin: admin));
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: controller.ownerList.length,
                itemBuilder: (context, index) {
                  final owner = controller.ownerList[index];
                  return ListTile(
                    title: Text(owner.username),
                    subtitle: Text(owner.phone),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {
                        controller.deleteOwner(owner.id);
                      },
                    ),
                    onTap: () {
                      Get.to(() => OwnerDetailPage(owner: owner));
                    },
                  );
                },
              ),
            ),
          ],
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => CreateUserPage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
