import 'package:get/get.dart';

import '../controllers/choose_schedule_controller.dart';

class ChooseScheduleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseScheduleController>(
      () => ChooseScheduleController(),
    );
  }
}
