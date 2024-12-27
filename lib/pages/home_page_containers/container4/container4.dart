import 'package:flutter/material.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:hexham_pint/utils/imageStrings.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../responsiveLayout.dart';
class Container4 extends StatelessWidget {
  const Container4({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileContainer4(),
      desktopView: DesktopContainer4(),
      tabletView: TabletContainer4(),
      largeScreenView: DesktopContainer4(),
    );
  }
}

class TabletContainer4 extends StatelessWidget {
  const TabletContainer4({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: size.height * 0.40, // Ensures minimum height for parent container
      ),
      child: Center(
        child: Container(
          height:  size.height * 0.3, // Set the height of the image container
          width:  size.width* 0.9, // Set the width of the image container
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Images.container4image), // Replace with your image path
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Constants.mobiledefaultpadding),
              child: const Text(
                'Where every bite tells a story of flavor,\npassion, and unforgettable moments!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Adjust color as needed
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileContainer4 extends StatelessWidget {
  const MobileContainer4({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
        minHeight: size.height * 0.40, // Ensures minimum height for parent container
      ),
      child: Center(
        child: Container(
          height:  size.height * 0.3, // Set the height of the image container
          width:  size.width* 0.9, // Set the width of the image container
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Images.container4image), // Replace with your image path
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Constants.mobiledefaultpadding),
              child: const Text(
                'Where every bite tells a story of flavor,\npassion, and unforgettable moments!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Adjust color as needed
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



class DesktopContainer4 extends StatelessWidget {
  const DesktopContainer4({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints(
        minHeight: Constants.desktoopheight * 0.6, // Ensures minimum height for parent container
      ),
      child: Center(
        child: Container(
          height: Constants.desktoopheight * 0.4, // Set the height of the image container
          width: Constants.desktopwidth * 0.8, // Set the width of the image container
          decoration: BoxDecoration(
            image: const DecorationImage(
              image: AssetImage(Images.container4image), // Replace with your image path
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20), // Rounded corners
          ),
          child: Center(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: Constants.desktopdefaultPadding),
              child: const Text(
                'Where every bite tells a story of flavor, passion,\nand unforgettable moments!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Adjust color as needed
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
