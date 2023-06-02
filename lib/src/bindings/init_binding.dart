import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CalculatorController(), permanent: true);
  }
}

class CalculatorController {}
