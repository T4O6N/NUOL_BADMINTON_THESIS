import 'package:get/get.dart';

import '../controllers/create_admin_for_owner_controller.dart';

class CreateAdminForOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreateAdminForOwnerController>(
      () => CreateAdminForOwnerController(),
    );
  }
}
