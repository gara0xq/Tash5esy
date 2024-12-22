import 'package:get/get.dart';

class HomeController extends GetxController {
  int _demoIndex = 0;
  int get demoIndex => _demoIndex;

  nextDemoIndex() {
    _demoIndex++;
    update();
  }
}
