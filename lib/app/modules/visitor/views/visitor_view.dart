import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/visitor_controller.dart';

class VisitorView extends GetView<VisitorController> {
  const VisitorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    VisitorController controller = Get.put(VisitorController());
    return Scaffold(
        body: GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, crossAxisSpacing: 8, mainAxisSpacing: 8),
      itemCount: controller.imageUrls.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {},
          child: Image.network(
            controller.imageUrls[index],
            fit: BoxFit.cover,
          ),
        );
      },
    ));
  }
}
