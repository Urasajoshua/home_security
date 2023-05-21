import 'package:get/get.dart';

import '../controllers/quick_controller.dart';

class QuickBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QuickController>(
      () => QuickController(),
    );
  }
}
