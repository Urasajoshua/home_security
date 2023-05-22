import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:security/app/data/repository/auth_repository.dart';
import 'package:security/app/modules/dashboard/views/dashboard_view.dart';

class LoginController extends GetxController {
  static LoginController instance = Get.find();

  AuthRepository authRepository;

  final GetStorage getStorage = GetStorage();

  LoginController(this.authRepository);
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  bool isFormValid = false;

  //controller
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
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
    emailEditingController.dispose();
    passwordEditingController.dispose();
  }

  void clearEditingController() {
    passwordEditingController.clear();
    emailEditingController.clear();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return "Please provide valid password";
    }
    return null;
  }

  void validateAndLogin({
    required String email,
    required String password,
  }) async {
    if (isFormValid) {
      return null;
    } else {
      formKey.currentState!.save();
      try {
        final loginData = {
          'email': email,
          'password': password,
        };

        //check email and password

        await authRepository.login(loginData).then((value) {
          Get.snackbar('success', 'now your loggeg in');
          clearEditingController();
          getStorage.write('userId', value.userId);
          getStorage.write('sesessionId', value.$id);
          Get.to(DashboardView());
        }).catchError((error) {
          if (error is AppwriteException) {
            Get.snackbar(
              '${error.message}',
              '',
            );
            print(error);
          } else {
            Get.snackbar('1', '$error');
            print(error);
          }
        });
      } catch (e) {
        Get.snackbar('1', '2',
            titleText: Text('Error'),
            messageText: Text('something went wrong$e'));
        print(e);
      }
    }
  }
}
