import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/drawer_controller.dart';
import '../../utils/colors.dart';
import 'navbuttons.dart';

class NavigationDrawer1 extends StatelessWidget {
  const NavigationDrawer1({super.key});

  static void show(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return const Align(
          alignment: Alignment.center,
          child: FractionallySizedBox(
            widthFactor: 0.8,
            child: NavigationDrawer1(),
          ),
        );
      },
    );
  }

  // Hide the dialog
  static void hide(BuildContext context) {
    if (Navigator.of(context).canPop()) {
      Navigator.of(context).pop(); // Close the dialog if it's currently displayed
    }
  }

  @override
  Widget build(BuildContext context) {
    final DrawerController1 drawerController = Get.put(DrawerController1());
    Size size = MediaQuery.of(context).size;

    return Material(
      color: Colors.transparent,
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.5, // Adjust height as needed
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 5,
              blurRadius: 20,
              offset: const Offset(0, 15),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavButton(
              text: 'Home',
              color: Colors.black,
              width: 35,
              onTap: () {
                NavigationDrawer1.hide(context);
                drawerController.toggleDrawer();
                Future.delayed(const Duration(milliseconds: 300), () { // Add a small delay
                  Get.toNamed('/homepage'); // Then navigate to the desired page
                });
              },
            ),
            const SizedBox(height: 10,),
            NavButton(
              text: 'Opening Hours',
              color: Colors.black,
              width: 85,
              onTap: () {
                NavigationDrawer1.hide(context);
                drawerController.toggleDrawer();
                Future.delayed(const Duration(milliseconds: 300), () {
                  Get.toNamed('/openinghours');
                });
              },
            ),
            const SizedBox(height: 10,),
            NavButton(
              text: 'Menu & Pricing',
              color: Colors.black,
              width: 90,
              onTap: () {
                NavigationDrawer1.hide(context);
                drawerController.toggleDrawer();
                Future.delayed(const Duration(milliseconds: 300), () {
                  Get.toNamed('/menu');
                });
              },
            ),
            const SizedBox(height: 10,),
            NavButton(
              text: 'About Us',
              color: Colors.black,
              width: 55,
              onTap: () {
                NavigationDrawer1.hide(context);
                drawerController.toggleDrawer();
                Future.delayed(const Duration(milliseconds: 300), () {
                  Get.toNamed('/aboutus');
                });
              },
            ),
            const SizedBox(height: 10,),
            NavButton(
              text: 'Contact Us',
              color: Colors.black,
              width: 65,
              onTap: () {
                NavigationDrawer1.hide(context);
                drawerController.toggleDrawer();
                Future.delayed(const Duration(milliseconds: 300), () {
                  Get.toNamed('/contactus');
                });
              },
            ),
            const SizedBox(height: 10,),
            NavButton(
              text: 'Book Now!',
              color: Colors.black,
              width: 55,
              onTap: () {
                NavigationDrawer1.hide(context);
                drawerController.toggleDrawer();
                Future.delayed(const Duration(milliseconds: 300), () {
                  Get.toNamed('/tableBooking');
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
