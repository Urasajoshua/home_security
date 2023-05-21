import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tips_controller.dart';

class TipsView extends GetView<TipsController> {
  const TipsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TipsController controller = Get.put(TipsController());
    return Scaffold(
        body: ListView(
      padding: const EdgeInsets.all(16),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'General Security Best Practise',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...controller.tips.map((tip) => Text('$tip')).toList(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'Surveillance and Cameras',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...controller.cameras.map((tip) => Text('$tip')).toList(),
            const SizedBox(
              height: 25,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'Emergency Preparedness',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...controller.emergency.map((tip) => Text('$tip')).toList(),
            const SizedBox(
              height: 10,
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.lock),
              title: Text(
                'Surveillance and Cameras',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ...controller.cameras.map((tip) => Text('$tip')).toList(),
            const SizedBox(
              height: 10,
            )
          ],
        )
      ],
    ));
  }
}
