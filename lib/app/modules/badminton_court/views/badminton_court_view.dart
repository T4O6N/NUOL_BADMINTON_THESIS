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
        title: const Text('Court Management'),
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
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Text(court.courtNumber[0].toUpperCase()),
                  ),
                  title: Text(court.courtNumber),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Description: ${court.description}'),
                      Text('ID: ${court.id}'),
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
