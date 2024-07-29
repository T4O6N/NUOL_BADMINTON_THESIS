import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/badminton_court_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/promotion_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_badminton_court_model.dart';
import 'package:nuol_badminton_thesis/app/widgets/warning_dialog.dart';

class CreateBadmintonCourtPage extends StatefulWidget {
  const CreateBadmintonCourtPage({super.key});

  @override
  State<CreateBadmintonCourtPage> createState() => _CreateBadmintonCourtPageState();
}

class _CreateBadmintonCourtPageState extends State<CreateBadmintonCourtPage> {
  final TextEditingController courtNumberController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController prizeController = TextEditingController();
  final TextEditingController promotionController = TextEditingController();
  final BadmintonCourtController courtController = Get.put(BadmintonCourtController());
  File? image;

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

  void createCourt(BuildContext context) {
    if (image == null) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Please select an image'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('OK'),
            ),
          ],
        ),
      );
      return;
    }
    final court = ParamCreateBadmintonCourtModel(
      courtNumber: courtNumberController.text,
      description: descriptionController.text,
      courtImage: image!.path,
      available: true,
      courtPrice: prizeController.text,
      promotion: promotionController.text,
    );
    courtController.createCourt(court, image!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(' ສ້າງຄອດ')),
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
                  labelText: 'ເລກຄອດ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.confirmation_number),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: descriptionController,
                decoration: const InputDecoration(
                  labelText: 'ຄຳອະທິບາຍ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.description),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: prizeController,
                decoration: const InputDecoration(
                  labelText: 'ລາຄາ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.money),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: promotionController,
                decoration: const InputDecoration(
                  labelText: 'ສ່ວນຫລຸດ',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.money),
                ),
              ),
              const SizedBox(height: 20),
              if (image != null) Image.file(image!, width: 100, height: 100, fit: BoxFit.cover) else const Text('ກະລຸນາເລືອກຮູບພາບ'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => pickImageGallery(),
                child: const Text('ເລືອກຮູບພາບ'),
              ),
              // const SizedBox(height: 10),
              // ElevatedButton(
              //   onPressed: () => pickImageCamera(),
              //   child: const Text('ຸ'),
              // ),
              const SizedBox(height: 20),
              ElevatedButton(
                // onPressed: () => createCourt(context),
                onPressed: () {
                  if (int.parse(prizeController.text) <= int.parse(promotionController.text)) {
                    warningDialog(des: "ກະລຸນາເພີ່ມໂປຮໂມຊັນໃຫ້ຖືກຕ້ອງ", context: context, btnOkOnPress: () {});
                  } else {
                    createCourt(context);
                  }
                },
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
