import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:security/app/modules/locks/views/locks_view.dart';
import 'package:security/app/modules/notification/views/notification_view.dart';
import 'package:security/app/modules/quick/views/quick_view.dart';
import 'package:security/app/modules/settings/views/settings_view.dart';
import 'package:security/app/modules/system/views/system_view.dart';
import 'package:security/app/modules/tips/views/tips_view.dart';
import 'package:security/app/modules/video/views/video_view.dart';
import 'package:security/app/modules/visitor/views/visitor_view.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    DashboardController controller = Get.put(DashboardController());
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Gamer㊙️Security'),
            centerTitle: true,
          ),
          drawer: Drawer(
            elevation: 30,
            semanticLabel: tag,
            backgroundColor: Colors.black,
            width: 200,
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Column(
                children: <Widget>[
                  Align(
                      alignment: Alignment.center,
                      child: const Text(
                        'Gamer㊙️Security',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )),
                  ListTile(
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.home),
                    onTap: () {
                      Get.to(DashboardView());
                    },
                    title: Text(
                      'home',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(NotificationView());
                    },
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.notifications),
                    title: Text(
                      'notifications',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(LocksView());
                    },
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.lock_outline),
                    title: Text(
                      'Locks',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(VideoView());
                    },
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.videocam_sharp),
                    title: Text(
                      'Videos',
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Get.to(SettingsView());
                    },
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.settings_applications),
                    title: Text(
                      'Settings',
                    ),
                  ),
                ],
              ),
            ),
          ),
          body: Obx(
            () => SafeArea(
                child: IndexedStack(
              index: controller.currentIndex.value,
              children: <Widget>[
                QuickView(),
                SystemView(),
                TipsView(),
                VisitorView(),
              ],
            )),
          ),
          bottomNavigationBar: Obx(
            () => BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: true,
              onTap: controller.changeIndex,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.black,
              currentIndex: controller.currentIndex.value,
              backgroundColor: Colors.blue,
              items: [
                BottomNavigationBarItem(
                  label: 'start',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'system health',
                  icon: Icon(Icons.health_and_safety),
                ),
                BottomNavigationBarItem(
                  label: 'security tips',
                  icon: Icon(Icons.tips_and_updates),
                ),
                BottomNavigationBarItem(
                  label: 'visitor',
                  icon: Icon(Icons.people),
                ),
              ],
            ),
          )),
    );
  }
}
