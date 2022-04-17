import 'package:extension_testing/controller/test_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension FindOrPut on GetInterface {
  S findOrPut<S>(
    S dependency, {
    String? tag,
    bool permanent = false,
    InstanceBuilderCallback<S>? builder,
  }) {
    if (GetInstance().isRegistered<S>(tag: tag)) {
      return GetInstance().find<S>(tag: tag);
    }
    return GetInstance().put<S>(dependency, tag: tag, permanent: permanent);
  }
}

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
