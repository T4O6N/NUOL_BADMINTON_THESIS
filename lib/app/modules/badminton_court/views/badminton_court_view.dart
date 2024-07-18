import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/create_badminton_court_page.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/update_badminton_court_page.dart';

import '../controllers/badminton_court_controller.dart';

class BadmintonCourtView extends GetView<BadmintonCourtController> {
  const BadmintonCourtView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BadmintonCourtController courtController = Get.put(BadmintonCourtController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'ຈັດການຄອດ',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => courtController.fetchCourts(),
          ),
        ],
      ),
      body: Obx(() {
        if (courtController.courtsList.isEmpty) {
          return const Center(child: Text('No courts available'));
        }
        return RefreshIndicator(
          onRefresh: () => courtController.fetchCourts(),
          child: ListView.builder(
            itemCount: courtController.courtsList.length,
            itemBuilder: (context, index) {
              final court = courtController.courtsList[index];
              final hasImage = index < courtController.images.length;
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  leading: hasImage
                      ? Image.file(
                          File(courtController.images[index].imagePath),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        )
                      : const CircleAvatar(
                          child: Icon(Icons.image_not_supported),
                        ),
                  title: Text(court.courtNumber),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description: ${court.description}'),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () {
                          Get.to(UpdateBadmintonCourtPage(court: court));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          if (hasImage) courtController.deleteImage(index);
                          courtController.deleteCourt(court.id);
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(CreateBadmintonCourtPage()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
