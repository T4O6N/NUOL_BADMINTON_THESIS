import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';

import 'update_owner_page.dart';

class OwnerManagementPage extends StatelessWidget {
  final OwnerController ownerController = Get.put(OwnerController());

  OwnerManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Owner Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ownerController.fetchOwners(),
          ),
        ],
      ),
      body: Obx(() {
        if (ownerController.ownersList.isEmpty) {
          return const Center(child: Text('No owners available'));
        }
        return ListView.builder(
          itemCount: ownerController.ownersList.length,
          itemBuilder: (context, index) {
            final owner = ownerController.ownersList[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ListTile(
                leading: CircleAvatar(
                  child: Text(owner.username[0].toUpperCase()),
                ),
                title: Text(owner.username),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Phone: ${owner.phone}'),
                    Text('ID: ${owner.id}'),
                  ],
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.blue),
                      onPressed: () {
                        Get.to(UpdateOwnerPage(owner: owner));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        ownerController.deleteOwner(owner.id);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
