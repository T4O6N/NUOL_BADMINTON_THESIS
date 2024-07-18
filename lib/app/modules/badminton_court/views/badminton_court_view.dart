import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/create_badminton_court_page.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/update_badminton_court_page.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/promotion_view.dart';

class BadmintonCourtView extends GetView<BadmintonCourtController> {
  const BadmintonCourtView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final BadmintonCourtController courtController = Get.put(BadmintonCourtController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text('ຈັດການຄອດ', style: TextStyle(color: Colors.white)),
        actions: [
          PopupMenuButton<String>(
            iconColor: Colors.white,
            onSelected: (value) {
              if (value == 'a') {
                Get.to(const CreateBadmintonCourtPage());
              } else {
                Get.to(const PromotionView());
              }
              // Add more actions as needed
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem<String>(
                  value: 'a',
                  child: Text('ສ້າງຄອດ'),
                ),
                const PopupMenuItem<String>(
                  value: 'b',
                  child: Text('ສ້າງສ່ວນຫຼຸດ'),
                ),
                // Add more menu items as needed
              ];
            },
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
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  leading: court.courtImage.isNotEmpty
                      ? CircleAvatar(
                          backgroundImage: FileImage(File(court.courtImage[0])),
                        )
                      : CircleAvatar(
                          child: Text(court.courtNumber[0].toUpperCase()),
                        ),
                  title: Text(court.courtNumber),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ລາຍລະອຽດ: ${court.description}'),
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
                          _showDeleteConfirmationDialog(context, courtController, court.id);
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
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () => Get.to(const CreateBadmintonCourtPage()),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context, BadmintonCourtController controller, String courtId) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('ຢືນຢັນການລຶບ'),
          content: const Text('ທ່ານແນ່ໃຈບໍ່ວ່າຕ້ອງການລຶບລາຍການນີ້?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('ຍົກເລີກ'),
            ),
            TextButton(
              onPressed: () {
                controller.deleteCourt(courtId);
                Navigator.of(context).pop();
              },
              child: const Text('ລຶບ', style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
