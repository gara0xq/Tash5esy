import 'package:get/get.dart';
import 'package:tash5esy/view/screens/paymets_screen.dart';
import 'package:tash5esy/view/screens/profile_screen.dart';
import 'package:tash5esy/view/screens/transactions_screen.dart';

import '../view/screens/home_screen.dart';

class AppController extends GetxController {
  int _screenIndex = 0;
  int get screenIndex => _screenIndex;
  List screens = [
    HomeScreen(),
    TransactionsScreen(),
    PaymetsScreen(),
    ProfileScreen(),
  ];

  @override
  void onReady() {
    // _splashScreen();
    super.onReady();
  }

  _splashScreen() {
    Future.delayed(Duration(seconds: 3), () => Get.offAllNamed("/welcome"));
  }

  setScreenIndex(index) {
    _screenIndex = index;
    update();
  }
}
