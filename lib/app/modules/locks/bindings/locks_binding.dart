import 'package:get/get.dart';

import '../controllers/locks_controller.dart';

class LocksBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocksController>(
      () => LocksController(),
    );
  }
}
