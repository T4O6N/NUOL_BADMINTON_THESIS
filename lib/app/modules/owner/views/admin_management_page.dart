import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/admin_dashboard/views/admin_login_and_register/admin_register_page.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_management_admin_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/update_admin_page.dart';

class AdminManagementPage extends StatelessWidget {
  final OwnerManagementAdminController adminController = Get.put(OwnerManagementAdminController());

  AdminManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'ຈັດການຂໍ້ມູນພະນັກງານເດີ່ນ',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
            onPressed: () => adminController.fetchAdmins(),
          ),
        ],
      ),
      body: Obx(
        () {
          if (adminController.adminsList.isEmpty) {
            return const Center(child: Text('No admins available'));
          }
          return RefreshIndicator(
            onRefresh: () => adminController.fetchAdmins(),
            child: ListView.builder(
              itemCount: adminController.adminsList.length,
              itemBuilder: (context, index) {
                final admin = adminController.adminsList[index];
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(admin.username[0].toUpperCase()),
                    ),
                    title: Text('ຊື້: ${admin.username}'),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ເບີໂທ: ${admin.phone}'),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit, color: Colors.blue),
                          onPressed: () {
                            Get.to(() => UpdateAdminPage(admin: admin));
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            adminController.deleteAdmin(admin.id);
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        tooltip: '',
        onPressed: () {
          Get.to(AdminRegisterPage());
        },
        child: const Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
