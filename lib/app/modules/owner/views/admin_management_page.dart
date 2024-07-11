import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_management_admin_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/update_admin_page.dart';

class AdminManagementPage extends StatelessWidget {
  final OwnerManagementAdminController adminController = Get.put(OwnerManagementAdminController());

  AdminManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => adminController.fetchAdmins(),
          ),
        ],
      ),
      body: Obx(() {
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
                  title: Text(admin.username),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Phone: ${admin.phone}'),
                      Text('ID: ${admin.id}'),
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
      }),
    );
  }
}
