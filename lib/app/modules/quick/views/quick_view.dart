import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quick_controller.dart';

class QuickView extends GetView<QuickController> {
  const QuickView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    QuickController controller = Get.put(QuickController());
    return SafeArea(
      child: Scaffold(
          body: Container(
        child: Padding(
          padding: const EdgeInsets.all(120),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Obx(() => controller.isOn.value
                            ? InkWell(
                                onTap: () {
                                  controller.turnOff();
                                },
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('images/turn.png'),
                                          fit: BoxFit.cover)),
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  controller.turnOn();
                                },
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('images/off.png'),
                                          fit: BoxFit.cover)),
                                ),
                              ))
                      ],
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(children: <Widget>[
                    Align(
                        child: Obx(
                      () => Text(
                        controller.isOn.value ? 'Turn Off' : 'Turn On',
                        style: TextStyle(fontSize: 26),
                      ),
                    ))
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Obx(() => Text(controller.isOn.value
                    ? 'system now is running'
                    : 'Your system is off please turn on to keep your home safe'))
              ]),
        ),
      )),
    );
  }
}
