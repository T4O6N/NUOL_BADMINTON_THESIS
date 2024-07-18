// ignore_for_file: library_private_types_in_public_api

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_badminton_court_model.dart';

class CreateBadmintonCourtPage extends StatefulWidget {
  const CreateBadmintonCourtPage({super.key});

  @override
  _CreateBadmintonCourtPageState createState() => _CreateBadmintonCourtPageState();
}

class _CreateBadmintonCourtPageState extends State<CreateBadmintonCourtPage> {
  final TextEditingController courtNumberController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final BadmintonCourtController courtController = Get.put(BadmintonCourtController());
  File? _selectedImage;

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoActionSheet(
        title: const Text(
          'ເລືອກຮູບພາບ',
          style: TextStyle(fontSize: 18),
        ),
        actions: <CupertinoActionSheetAction>[
          CupertinoActionSheetAction(
            onPressed: () async => _pickImage(ImageSource.gallery),
            child: const Text(
              'ຄັງຮູບ',
              style: TextStyle(fontSize: 18),
            ),
          ),
          CupertinoActionSheetAction(
            onPressed: () async => _pickImage(ImageSource.camera),
            child: const Text(
              'ກ້ອງ​ຖ່າຍ​ຮູບ',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
        cancelButton: CupertinoActionSheetAction(
          onPressed: () => Navigator.pop(context),
          child: const Text(
            'ຍົກເລີກ',
            style: TextStyle(fontSize: 18, color: Colors.red),
          ),
        ),
      ),
    );
  }

  Future<void> _pickImage(ImageSource source) async {
    Navigator.pop(context);
    try {
      final newImage = await ImagePicker().pickImage(source: source, maxHeight: 480, maxWidth: 480);
      if (newImage == null) return;
      setState(() {
        _selectedImage = File(newImage.path);
      });
    } catch (e) {
      _showErrorDialog(context, "Please select another image.");
    }
  }

  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void createCourt(BuildContext context) {
    final court = ParamCreateBadmintonCourtModel(
      courtNumber: courtNumberController.text,
      description: descriptionController.text,
      courtImage: _selectedImage != null ? [_selectedImage!.path] : [], // Example images
      available: true,
    );
    courtController.createCourt(court);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: const Text(
          'ສ້າງຄອດ',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
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
                  labelText: 'ໝາຍເລກຄອດ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.confirmation_number),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: 'ລາຍລະອຽດ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.description),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () => _showActionSheet(context),
                child: Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    image: _selectedImage != null ? DecorationImage(image: FileImage(_selectedImage!), fit: BoxFit.cover) : null,
                  ),
                  child: _selectedImage == null ? Icon(Icons.add_a_photo, size: 50, color: Colors.grey[700]) : null,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => createCourt(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('ສ້າງ'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
