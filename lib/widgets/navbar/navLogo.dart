import 'package:flutter/material.dart';
import 'package:hexham_pint/utils/imageStrings.dart';

class NavLogo extends StatelessWidget {
  final double width;
  final double height;

  const NavLogo({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: Image.asset(
        Images.logo,
        fit: BoxFit.contain, // Ensures the image fits within the given width and height
      ),
    );
  }
}
