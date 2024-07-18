import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/image_model.dart';

import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_badminton_court_model.dart';

class CreateBadmintonCourtPage extends StatelessWidget {
  final TextEditingController courtNumberController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final BadmintonCourtController courtController = Get.put(BadmintonCourtController());

  CreateBadmintonCourtPage({super.key});

  void createCourt(BuildContext context) {
    final court = ParamCreateBadmintonCourtModel(
      courtNumber: courtNumberController.text,
      description: descriptionController.text,
      // courtImage: ["2.jpg"], // Example images
      available: true,
    );
    courtController.createCourt(court);
  }

  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'ສ້າງຄອດ',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height * 0.8,
            child: Column(
              children: [
                const Text(
                  '',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: courtNumberController,
                  decoration: const InputDecoration(
                    labelText: 'Court Number',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.confirmation_number),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: descriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Description',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.description),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () async {
                    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
                    courtController.addImage(ImageModel(imagePath: image!.path));
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                  ),
                  child: const Text('ເພີ່ມຮູບ'),
                ),
                const SizedBox(height: 20),
                const Spacer(),
                ElevatedButton(
                  onPressed: () async {
                    createCourt(context);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    textStyle: const TextStyle(fontSize: 18),
                    backgroundColor: Colors.green,
                  ),
                  child: const Text(
                    'ສ້າງ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
