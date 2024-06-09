import 'package:get/get.dart';

import '../controllers/admin_user_profile_controller.dart';

class AdminUserProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminUserProfileController>(
      () => AdminUserProfileController(),
    );
  }
}
