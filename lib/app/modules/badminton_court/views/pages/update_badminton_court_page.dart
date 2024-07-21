import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/badminton_court_model.dart';

class UpdateBadmintonCourtPage extends StatefulWidget {
  final BadmintonCourtModel court;

  const UpdateBadmintonCourtPage({super.key, required this.court});

  @override
  _UpdateBadmintonCourtPageState createState() => _UpdateBadmintonCourtPageState();
}

class _UpdateBadmintonCourtPageState extends State<UpdateBadmintonCourtPage> {
  late TextEditingController courtNumberController;
  late TextEditingController descriptionController;
  final BadmintonCourtController courtController = Get.put(BadmintonCourtController());
  File? image;

  @override
  void initState() {
    super.initState();
    courtNumberController = TextEditingController(text: widget.court.courtNumber);
    descriptionController = TextEditingController(text: widget.court.description);
  }

  Future<void> pickImageGallery() async {
    try {
      final newImage = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (newImage == null) return;
      setState(() {
        image = File(newImage.path);
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Failed to pick image from gallery.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  Future<void> pickImageCamera() async {
    try {
      final newImage = await ImagePicker().pickImage(source: ImageSource.camera);
      if (newImage == null) return;
      setState(() {
        image = File(newImage.path);
      });
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Failed to take image from camera.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  void updateCourt() {
    final updatedCourt = BadmintonCourtModel(
      id: widget.court.id,
      courtNumber: courtNumberController.text,
      description: descriptionController.text,
      courtImage: image != null ? image!.path : widget.court.courtImage,
      available: widget.court.available,
    );
    courtController.updateCourt(updatedCourt, imageFile: image);
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
              const SizedBox(height: 20),
              if (image != null) Image.file(image!, width: 100, height: 100, fit: BoxFit.cover) else if (widget.court.courtImage.isNotEmpty) Image.file(File(widget.court.courtImage), width: 100, height: 100, fit: BoxFit.cover) else const Text('No image selected'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => pickImageGallery(),
                child: const Text('Pick Image from Gallery'),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => pickImageCamera(),
                child: const Text('Pick Image from Camera'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => updateCourt(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text(
                  'Update',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
