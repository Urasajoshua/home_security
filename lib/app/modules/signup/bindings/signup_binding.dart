import 'package:get/get.dart';
import 'package:security/app/data/provider/smart_home.provider.dart';
import 'package:security/app/data/repository/auth_repository.dart';

import '../controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupController>(
      () => SignupController(AuthRepository(SmartHomeProvider())),
    );
  }
}
