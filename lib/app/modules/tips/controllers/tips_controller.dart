import 'package:get/get.dart';

class TipsController extends GetxController {
  final tips = [
    'Arm the alarm system even when at home.',
    'Regularly test the alarm system for proper functionality.',
    'Follow instructions to arm and disarm the system using the app.',
  ];

  final cameras = [
    'Remind users to keep cameras firmware up to date for security patches',
    'Encourage users to regularly check camera feeds and review recordings for any suspicious activities',
    '',
  ];

  final emergency = [
    'Encourage users to periodically review and update their emergency contact information',
    'Recommend storing emergency contact numbers, including police, fire department, and security service, in the app',
    'Provide tips on creating an emergency plan and communicating it to all household members',
  ];
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
}
