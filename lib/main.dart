import 'package:flutter/material.dart';
import 'package:flutter_getx/DashboardPage.dart';
import 'package:get/get.dart';

import 'HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: " Route Navigation for Named Routes ",
      initialRoute: "/",
      defaultTransition: Transition.rightToLeftWithFade,
      getPages: [
        GetPage(name: '/', page: () => MyApp()),
        GetPage(name: '/HomePage', page: () => HomePage()),
        GetPage(name: '/DashboardPage', page: () => DashboardPage()),
      ],
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Route Navigation for Named Routes "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed("/HomePage");
                },
                child: Text(" Go to Home "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
