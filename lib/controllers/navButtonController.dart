import 'package:get/get.dart';

class NavButtonController extends GetxController {
  var isHovered = false.obs;

  void setHover(bool value) {
    isHovered.value = value;
  }
}