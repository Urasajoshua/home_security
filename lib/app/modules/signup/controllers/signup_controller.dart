import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:security/app/data/repository/auth_repository.dart';
import 'package:security/app/modules/login/views/login_view.dart';

class SignupController extends GetxController {
  //text field controller to get data from textfield
  static SignupController instance = Get.find();

  AuthRepository authRepository;

  SignupController(this.authRepository);
  //form key
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  TextEditingController emailEditing = TextEditingController();
  TextEditingController passwordEditing = TextEditingController();
  TextEditingController nameEditing = TextEditingController();

  //is form valid
  bool isFormValid = false;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    emailEditing.dispose();
    passwordEditing.dispose();
    nameEditing.dispose();
  }

  void clearTextEditingController() {
    emailEditing.clear();
    passwordEditing.clear();
    nameEditing.clear();
  }

  String? validateEmail(String value) {
    final trimedValue = value.trim();
    if (!GetUtils.isEmail(trimedValue)) {
      return "Provide valid email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.isEmpty) {
      return 'provide valid password';
    }
    return null;
  }

  String? validateName(String value) {
    if (value.isEmpty) {
      return 'provide valid name';
    }
    return null;
  }

  void validateAndSignup(
      {required String email,
      required String password,
      required String name}) async {
    isFormValid = formKey.currentState!.validate();
    if (!isFormValid) {
      return;
    } else {
      formKey.currentState!.save();
      try {
        final signupData = {
          'userId': ID.unique(),
          'email': email,
          'password': password,
          'name': name,
        };
        await authRepository.signup(signupData).then((value) {
          Get.snackbar('success', 'user created');
          clearTextEditingController();
          Get.to(LoginView());
        }).catchError((error) {
          if (error is AppwriteException) {
            Get.snackbar(
              'appwrite$error',
              '',
            );
            print(error);
          } else {
            Get.snackbar('1', '$error');
            print(error);
          }
        });
      } catch (e) {
        Get.snackbar('', '',
            titleText: Text('Error'),
            messageText: Text('something went wrong$e'));
        print(e);
      }
    }
  }
}
