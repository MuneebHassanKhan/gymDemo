import 'package:flutter/material.dart';
import 'package:trainingprojectgetx/controller/json%20controller/homecontroller.dart';
import 'package:trainingprojectgetx/view/home%20view/homeview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return homeView(context);
  }
}
