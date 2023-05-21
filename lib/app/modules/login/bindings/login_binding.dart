import 'package:get/get.dart';
import 'package:security/app/data/provider/smart_home.provider.dart';
import 'package:security/app/data/repository/auth_repository.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(AuthRepository(SmartHomeProvider())),
    );
  }
}
