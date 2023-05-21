import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/locks_controller.dart';

class LocksView extends GetView<LocksController> {
  const LocksView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocksController controller = Get.put(LocksController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('DoorLocks'),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [Container()],
            ),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: controller.changeIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              currentIndex: controller.currentIndex.value,
              backgroundColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  label: '',
                  icon: Icon(Icons.door_back_door),
                ),
                BottomNavigationBarItem(
                  label: '',
                  icon: Icon(Icons.checklist_rtl_rounded),
                ),
              ],
            ),
          )),
    );
  }
}
