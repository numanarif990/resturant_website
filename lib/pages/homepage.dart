import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controllers/homepage_controller.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
    Widget build(BuildContext context) {
      final HomepageController controller = Get.put(HomepageController());

      return Scaffold(
        backgroundColor: Colors.white,
        body: Obx(() {
          if (controller.widgets.isEmpty) {
            return const Center(child: CircularProgressIndicator(color: Colors.blue,));
          }

          return ListView.builder(
            controller: controller.scrollController,
            itemCount: controller.widgets.length + (controller.isLoadingMore.value ? 1 : 0),
            itemBuilder: (context, index) {
              if (index < controller.widgets.length) {
                return controller.widgets[index];
              } else {
                return const Center(child: CircularProgressIndicator(color: Colors.blue,));
              }
            },
          );
        }),
      );
    }
}
