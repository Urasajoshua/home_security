import 'package:get/get.dart';

import '../controllers/forget_controller.dart';

class ForgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgetController>(
      () => ForgetController(),
    );
  }
}
