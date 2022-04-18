import 'package:extension_testing/controller/test_controller.dart';
import 'package:extension_testing/screen/find_or_put_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExtensionTesting extends StatelessWidget {
  ExtensionTesting({Key? key}) : super(key: key);

  //TODO: Include your getx controller here with findOrPut function
  final TestController _testController = Get.findOrPut(TestController());

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Center(
        child: Text(
          _testController.showSampleTest,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }
}
