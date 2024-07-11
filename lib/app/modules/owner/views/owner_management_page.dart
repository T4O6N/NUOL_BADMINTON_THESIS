import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/controllers/owner_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/owner/views/update_owner_page.dart';

class OwnerManagementPage extends StatelessWidget {
  final OwnerController ownerController = Get.put(OwnerController());

  OwnerManagementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Owner Management'),
      ),
      body: Obx(() {
        if (ownerController.ownersList.isEmpty) {
          return const Center(child: Text('No owners available'));
        }
        return ListView.builder(
          itemCount: ownerController.ownersList.length,
          itemBuilder: (context, index) {
            final owner = ownerController.ownersList[index];
            return ListTile(
              title: Text(owner.username),
              subtitle: Text(owner.phone),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      Get.to(UpdateOwnerPage(owner: owner));
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      ownerController.deleteOwner(owner.id);
                    },
                  ),
                ],
              ),
            );
          },
        );
      }),
    );
  }
}
