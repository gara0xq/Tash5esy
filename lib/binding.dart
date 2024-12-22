import 'package:get/get.dart';
import 'package:tash5esy/controller/app_controller.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
  }
}
