import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/promotion_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/create_promotion_page.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/update_promotion_page.dart';

class PromotionView extends GetView<PromotionController> {
  const PromotionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PromotionController promotionController = Get.put(PromotionController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Promotion Management'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => promotionController.fetchPromotions(),
          ),
        ],
      ),
      body: Obx(() {
        if (promotionController.promotionsList.isEmpty) {
          return const Center(child: Text('No promotions available'));
        }
        return RefreshIndicator(
          onRefresh: () => promotionController.fetchPromotions(),
          child: ListView.builder(
            itemCount: promotionController.promotionsList.length,
            itemBuilder: (context, index) {
              final promotion = promotionController.promotionsList[index];
              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: ListTile(
                  title: Text(promotion.title),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discount: ${promotion.discount}'),
                      Text('ID: ${promotion.id}'),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit, color: Colors.blue),
                        onPressed: () {
                          Get.to(UpdatePromotionPage(promotion: promotion));
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          promotionController.deletePromotion(promotion.id);
                        },
                      ),
                    ],
                  ),
                  onTap: () async {
                    await promotionController.fetchPromotionById(promotion.id);
                    if (promotionController.currentPromotion.value != null) {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              promotionController.currentPromotion.value!.title,
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            content: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.discount, color: Colors.green),
                                    SizedBox(width: 10),
                                    Text(
                                      'Discount: ${promotionController.currentPromotion.value!.discount}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.calendar_today, color: Colors.orange),
                                    SizedBox(width: 10),
                                    Text(
                                      'Created At: ${promotionController.currentPromotion.value!.createdAt}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.update, color: Colors.purple),
                                    SizedBox(width: 10),
                                    Text(
                                      'Updated At: ${promotionController.currentPromotion.value!.updatedAt}',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Get.back(),
                                child: const Text('Close'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                ),
              );
            },
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(CreatePromotionPage()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
