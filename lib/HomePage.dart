import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';

import 'package:flutter_getx/DashboardPage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Home Page "),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                " This is the Home Page Screen ",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed("/DashboardPage");
                  },
                  child: const Text(
                    " Go to Dashboard Page ",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  )),
            ]),
      ),
    );
  }
}
