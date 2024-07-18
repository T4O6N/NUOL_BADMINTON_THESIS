import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/promotion_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/param/param_create_promotion_model.dart';

class CreatePromotionPage extends StatelessWidget {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController discountController = TextEditingController();
  final PromotionController promotionController = Get.put(PromotionController());

  CreatePromotionPage({super.key});

  void createPromotion(BuildContext context) {
    final promotion = ParamCreatePromotionModel(
      title: titleController.text,
      discount: int.parse(discountController.text),
    );
    promotionController.createPromotion(promotion);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Promotion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Create Promotion',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: discountController,
                decoration: const InputDecoration(
                  labelText: 'Discount',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.discount),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => createPromotion(context),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
