import 'package:flutter/material.dart';
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
      title: " Route Navigation for Un-named Routes ",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" Route Navigation for Un-named Routes "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.to(
                    HomePage(),
                  );
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
