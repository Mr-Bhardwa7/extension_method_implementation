import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screen/test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Extension methods testing',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExtensionTesting(),
    );
  }
}
