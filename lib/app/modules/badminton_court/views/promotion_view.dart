import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/controllers/promotion_controller.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/create_promotion_page.dart';
import 'package:nuol_badminton_thesis/app/modules/badminton_court/views/pages/update_promotion_page.dart';
import 'package:nuol_badminton_thesis/app/widgets/number_format.dart';

class PromotionView extends GetView<PromotionController> {
  const PromotionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PromotionController promotionController = Get.put(PromotionController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.green,
        title: const Text(
          'ຈັດການໂປຮໂມຊັນ',
          style: TextStyle(color: Colors.white),
        ),
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
                  title: Row(
                    children: [
                      const Icon(Icons.info, color: Colors.green, size: 20),
                      const SizedBox(width: 10),
                      Text('ລາຍລະອຽດ: ${promotion.title}'),
                    ],
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.discount, color: Colors.green, size: 20),
                          const SizedBox(width: 10),
                          Row(
                            children: [
                              const Text('ສ່ວນຫຼຸດ: '),
                              Text(NumberFormatter.formatPriceKip(promotionController.currentPromotion.value!.discount)),
                            ],
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
                      if (Get.isDialogOpen == true) {
                        Get.back();
                      }
                      Get.dialog(
                        AlertDialog(
                          title: Text(
                            'ລາຍລະອຽດ: ${promotionController.currentPromotion.value!.title}',
                            style: const TextStyle(
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
                                  const Icon(Icons.discount, color: Colors.green),
                                  const SizedBox(width: 10),
                                  Row(
                                    children: [
                                      const Text(
                                        'ສ່ວນຫຼຸດ: ',
                                        style: TextStyle(fontSize: 18),
                                      ),
                                      Text(
                                        NumberFormatter.formatPriceKip(promotionController.currentPromotion.value!.discount),
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Get.back(),
                              child: const Text('Close'),
                            ),
                          ],
                        ),
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
