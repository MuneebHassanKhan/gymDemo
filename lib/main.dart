import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trainingprojectgetx/controller/json%20controller/homecontroller.dart';
import 'package:trainingprojectgetx/screens/home%20screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
