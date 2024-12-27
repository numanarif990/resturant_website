import 'package:get/get.dart';

class BottomIconController extends GetxController {
  var onIt = false.obs; // Observable boolean to track the hover state

  void toggleOnIt() {
    onIt.value = !onIt.value;
  }

  void setOnItTrue() {
    onIt.value = true;
  }

  void setOnItFalse() {
    onIt.value = false;
  }
}
