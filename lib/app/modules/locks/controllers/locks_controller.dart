import 'package:get/get.dart';

class LocksController extends GetxController {
  var currentIndex = 0.obs;
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

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
