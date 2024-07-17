import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/badminton_court_model.dart';

class UpdateBadmintonCourtPage extends StatelessWidget {
  final TextEditingController courtNumberController;
  final TextEditingController descriptionController;
  final BadmintonCourtController courtController = Get.put(BadmintonCourtController());
  final BadmintonCourtModel court;

  UpdateBadmintonCourtPage({super.key, required this.court})
      : courtNumberController = TextEditingController(text: court.courtNumber),
        descriptionController = TextEditingController(text: court.description);

  void updateCourt(BuildContext context) {
    final updatedCourt = court.copyWith(
      courtNumber: courtNumberController.text,
      description: descriptionController.text,
    );
    courtController.updateCourt(updatedCourt);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update Court')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Update Court',
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
                onPressed: () => updateCourt(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Update'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
