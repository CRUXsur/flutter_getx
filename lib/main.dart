import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: " Snack Bar ",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" This is Snack Bar "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.snackbar("It's Snack Bar", " Hello Snack Bar ");
                },
                child: const Text(" Show Snack Bar "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
