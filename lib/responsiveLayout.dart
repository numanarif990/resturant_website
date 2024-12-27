import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  final Widget largeScreenView;

  ResponsiveLayout({
    required this.mobileView,
    required this.tabletView,
    required this.desktopView,
    required this.largeScreenView,
  });

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    double width = MediaQuery.of(context).size.width;

    // Mobile screen size - up to 600px
    if (width <= 600) {
      return mobileView;
    }
    // Tablet screen size - between 601px and 900px
    else if (width <= 900) {
      return tabletView;
    }
    // Desktop screen size - between 901px and 1200px
    else if (width <= 1200) {
      return desktopView;
    }
    // Large screen (Center the layout when width exceeds 1200px)
    else {
      return Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: largeScreenView,
        ),
      );
    }
  }
}
