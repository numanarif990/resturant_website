import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:hexham_pint/widgets/navbar/navLogo.dart';
import '../../utils/customElevatedButton.dart';
import 'navbuttons.dart';

class DesktopNavBar extends StatelessWidget {
  // final Function(int) onNavItemTap;

  const DesktopNavBar({
    super.key,
    // required this.onNavItemTap,
  });

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: 120,
      decoration: const BoxDecoration(
        color: Colors.transparent, // Fixed background color
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavLogo(width: Constants.desktopwidth / 4, height: Constants.desktopwidth / 28),
           Padding(
            padding: EdgeInsets.only(top: 55),
            child: Row(
              children: [
                NavButton(
                  text: 'Home',
                  color: Colors.black, // Fixed nav button color
                  width: 35,
                  onTap: () {
                    Get.toNamed('/homepage');
                  },
                ),
                NavButton(
                  text: 'Opening Hours',
                  color: Colors.black, // Fixed nav button color
                  width: 85,
                  onTap: () {
                    Get.toNamed('/openinghours');
                  },
                ),
                NavButton(
                  text: 'Menu & Pricing',
                  color: Colors.black, // Fixed nav button color
                  width: 90,
                  onTap: () {
                    Get.toNamed('/menu');
                  },
                ),
                NavButton(
                  text: 'About Us',
                  color: Colors.black, // Fixed nav button color
                  width: 55,
                  onTap: () {
                    Get.toNamed('/aboutus');
                  },
                ),
                NavButton(
                  text: 'Contact Us',
                  color: Colors.black, // Fixed nav button color
                  width: 65,
                  onTap: () {
                    Get.toNamed('/contactus');
                  },
                ),
              ],
            ),
          ),
          CustomElevatedButton(text: "Book a table",color: AppColors.primaryColor, onTap: (){Get.toNamed("/tableBooking");},)
        ],
      ),
    );
  }
}

