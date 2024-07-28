import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/create_badminton_court_page.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/update_badminton_court_page.dart';
import 'package:nuol_badminton_thesis/app/widgets/getImageProvider.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';

class BadmintonCourtView extends GetView<BadmintonCourtController> {
  const BadmintonCourtView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BadmintonCourtController courtController = Get.put(BadmintonCourtController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('ຈັດການຄອດ'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => courtController.fetchCourts(),
          ),
        ],
      ),
      body: Obx(() {
        if (courtController.courtsList.isEmpty) {
          return const Center(child: Text('ກຳລັງໂຫລດ...'));
        }
        return RefreshIndicator(
          onRefresh: () => courtController.fetchCourts(),
          child: ListView.builder(
            itemCount: courtController.courtsList.length,
            itemBuilder: (context, index) {
              final court = courtController.courtsList[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: getImageProvider(court.courtImage),
                    child: court.courtImage.isEmpty ? Text(court.courtNumber[0].toUpperCase()) : null,
                  ),
                  title: Row(
                    children: [
                      const Text('ຄອດ: '),
                      Text(court.courtNumber),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('ຄຳອະທິບາຍ: ${court.description}'),
                      Text('ລາຄາ: ${court.courtPrice.toString().isEmpty ? "0" : NumberFormatter.formatPriceKip(int.parse(court.courtPrice.toString()))}'),
                      Row(
                        children: [
                          const Text('ສ່ວນຫລຸດ: '),
                          Text(
                            ' ${court.promotion.toString().isEmpty ? "0" : NumberFormatter.formatPriceKip(int.parse(court.promotion.toString()))}',
                            style: const TextStyle(color: Colors.orange),
                          ),
                        ],
                      ),
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
        onPressed: () => Get.to(const CreateBadmintonCourtPage()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
