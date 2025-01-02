import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/widgets/navbar/desktopnavbar.dart';
import 'package:hexham_pint/widgets/navbar/mobilenavbar.dart';

import '../../controllers/drawer_controller.dart';
import '../../responsiveLayout.dart';
import 'navLogo.dart';
import 'navigationDrawer.dart';
class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileNavBar(),
      desktopView: DesktopNavBar(),
      tabletView: TabletNavbar(),
      largeScreenView: DesktopNavBar(),
    );
  }
}

class TabletNavbar extends StatelessWidget {
  const TabletNavbar({super.key});

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
