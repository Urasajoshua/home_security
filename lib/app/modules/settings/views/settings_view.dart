import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  const SettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text('Settings'),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  child: Card(
                    child: Column(children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.person_pin,
                              size: 60,
                            ),
                            Text(
                              'My Account',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                      ListTile(
                        title: Text('update photo'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        title: Text('change password'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        title: Text('Privacy And Security'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.app_settings_alt,
                              size: 60,
                            ),
                            Text(
                              'App Setting',
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        thickness: 3,
                      ),
                      ListTile(
                        onTap: () {
                          Get.bottomSheet(
                            Container(
                              child: Wrap(
                                children: <Widget>[
                                  ListTile(
                                    leading: Icon(
                                      Icons.dark_mode,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      'Dark Theme',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      Get.changeTheme(ThemeData.dark());
                                    },
                                  ),
                                  ListTile(
                                    leading: Icon(
                                      Icons.light_mode,
                                      color: Colors.white,
                                    ),
                                    title: Text(
                                      'Light Theme',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onTap: () {
                                      Get.changeTheme(ThemeData.light());
                                    },
                                  ),
                                ],
                              ),
                            ),
                            backgroundColor: Colors.blue,
                          );
                        },
                        title: Text('Change Theme'),
                        trailing: Icon(Icons.arrow_forward_ios_outlined),
                      ),
                      ListTile(
                        title: Text('Logout'),
                        trailing: Icon(Icons.logout),
                      ),
                    ]),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
