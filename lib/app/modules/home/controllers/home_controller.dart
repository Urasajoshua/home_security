import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:security/app/modules/dashboard/views/dashboard_view.dart';
import 'package:security/app/modules/login/views/login_view.dart';

class HomeController extends GetxController {
  GetStorage getStorage = GetStorage();
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (getStorage.read("userId") != null) {
      Get.to(DashboardView());
    } else {
      Get.to(LoginView());
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
