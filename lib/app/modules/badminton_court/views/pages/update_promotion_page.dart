import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/promotion_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/models/promotion_model.dart';

class UpdatePromotionPage extends StatelessWidget {
  final TextEditingController titleController;
  final TextEditingController discountController;
  final PromotionController promotionController = Get.put(PromotionController());
  final PromotionModel promotion;

  UpdatePromotionPage({super.key, required this.promotion})
      : titleController = TextEditingController(text: promotion.title),
        discountController = TextEditingController(text: promotion.discount.toString());

  void updatePromotion(BuildContext context) {
    final updatedPromotion = PromotionModel(
      id: promotion.id,
      title: titleController.text,
      discount: int.parse(discountController.text),
    );
    promotionController.updatePromotion(updatedPromotion);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Update Promotion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                'Update Promotion',
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
                onPressed: () => updatePromotion(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
