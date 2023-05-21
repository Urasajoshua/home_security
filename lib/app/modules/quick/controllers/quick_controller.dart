import 'package:get/get.dart';

class QuickController extends GetxController {
  RxBool isOn = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void turnOn() {
    if (isOn == false.obs) {
      isOn.toggle();
    }
    return;
  }

  void turnOff() {
    if (isOn == true.obs) {
      isOn.toggle();
    }
  }
}
