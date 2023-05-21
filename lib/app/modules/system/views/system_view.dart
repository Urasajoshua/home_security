import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/system_controller.dart';

class SystemView extends GetView<SystemController> {
  const SystemView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SystemController controller = Get.put(SystemController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 70),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        controller.isSystemArmed
                            ? Icon(
                                Icons.check_circle,
                                color: Colors.green,
                                size: 88,
                              )
                            : Icon(
                                Icons.error,
                                color: Colors.red,
                                size: 88,
                              ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          controller.isSystemArmed
                              ? 'System Armed'
                              : 'System Disarmed',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
