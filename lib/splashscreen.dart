import 'package:flutter/material.dart';
import 'package:hexham_pint/widgets/navbar/navLogo.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Determine width and height for NavLogo based on breakpoints
    double navLogoWidth;
    double navLogoHeight;

    if (size.width < 600) {
      // Mobile
      navLogoWidth = size.width * 0.5;
      navLogoHeight = navLogoWidth * 0.6;
    } else if (size.width < 1024) {
      // Tablet
      navLogoWidth = size.width * 0.4;
      navLogoHeight = navLogoWidth * 0.6;
    } else {
      // Desktop
      navLogoWidth = size.width * 0.2;
      navLogoHeight = navLogoWidth * 0.6;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NavLogo(width: navLogoWidth, height: navLogoHeight),
            const SizedBox(height: 20),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
