import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  child: Column(children: <Widget>[
                    const Text(
                      'New',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      height: 0,
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    const Text(
                      'Last Week',
                      style: TextStyle(fontSize: 18),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    const Text(
                      'Last Month',
                      style: TextStyle(fontSize: 18),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    const Text(
                      'old',
                      style: TextStyle(fontSize: 18),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                    ListTile(
                      title: Text('Stranger'),
                      subtitle: Text('There Is Someone Outside'),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ));
  }
}
