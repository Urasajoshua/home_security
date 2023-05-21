import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/forget_controller.dart';

class ForgetView extends GetView<ForgetController> {
  const ForgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 30 * 4,
              ),
              Image.asset(
                'images/1.png',
                height: height * 0.3,
              ),
              const Text('Forget Password')
            ],
          ),
        ),
      ),
    );
  }
}
