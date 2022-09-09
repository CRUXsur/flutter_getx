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
      title: " Dialog ",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(" This is dialog area "),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: " Dialog Title ",
                    titleStyle: TextStyle(fontSize: 18.0),
                    middleText: " This will be middle Area ",
                    middleTextStyle: TextStyle(fontSize: 19.0),
                    backgroundColor: Colors.blueGrey,
                    radius: 80.0,
                    textCancel: " NO ",
                    cancelTextColor: Colors.white,
                    textConfirm: " YES ",
                    confirmTextColor: Colors.white,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.pink,
                  );
                },
                child: const Text(" This is show dialog button "),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
