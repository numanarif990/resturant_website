import 'package:get/get.dart';

class DrawerController1 extends GetxController {
  RxBool isVisible = false.obs;

  void toggleDrawer() {
    isVisible.value = !isVisible.value;
  }
}
