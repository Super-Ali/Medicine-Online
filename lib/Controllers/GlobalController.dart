import 'package:get/get.dart';

class GlobalController extends GetxController {
  static GlobalController instance = Get.find();

  var cartItems = 0.obs;

  var searchStarted = false.obs;

  var seachText = "".obs;

  additem() {
    cartItems++;
  }
}
