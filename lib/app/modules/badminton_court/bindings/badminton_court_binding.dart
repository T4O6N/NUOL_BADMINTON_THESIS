import 'package:get/get.dart';

import '../controllers/badminton_court_controller.dart';

class BadmintonCourtBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BadmintonCourtController>(
      () => BadmintonCourtController(),
    );
  }
}
