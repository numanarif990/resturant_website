import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/widgets/navbar/navigationDrawer.dart';
import '../../controllers/drawer_controller.dart';
import 'navLogo.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerController = Get.put(DrawerController1());
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white, // Default background color
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
                width: 2.0,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  drawerController.toggleDrawer();
                  NavigationDrawer1.show(context);

                },
                child:  Obx(
                ()=> Icon(
                    drawerController.isVisible.value ? Icons.menu: Icons.menu,
                    color: Colors.black, // Default menu icon color
                    size: 35,
                  ),
                ),
              ),
              NavLogo(width: screenWidth / 2.1, height: screenWidth / 15),
            ],
          ),
        ),
      ],
    );
  }
}