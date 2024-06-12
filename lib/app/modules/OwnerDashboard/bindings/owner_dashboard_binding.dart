import 'package:get/get.dart';

import '../controllers/owner_dashboard_controller.dart';

class OwnerDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OwnerDashboardController>(
      () => OwnerDashboardController(),
    );
  }
}
