import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/homepage.dart';
import 'package:hexham_pint/splashscreen.dart';

class AppLoader extends StatefulWidget {
  const AppLoader({super.key});

  @override
  _AppLoaderState createState() => _AppLoaderState();
}

class _AppLoaderState extends State<AppLoader> {
  late Future<void> initializationFuture;

  @override
  void initState() {
    super.initState();
    initializationFuture = _initializeApp();
  }

  Future<void> _initializeApp() async {
    await Future.delayed(const Duration(milliseconds: 100)); // Ensure splash screen renders
    try {
      await _precacheAssets();
    } catch (e) {
      debugPrint("Error during initialization: $e");
    } finally {
      // Ensure a minimum splash duration of 2 seconds
      await Future.delayed(const Duration(seconds: 2));
    }
  }

  Future<void> _precacheAssets() async {
    List<String> imagePaths = [
      "assets/images/logo.png",
      "assets/images/home_images/img.png",
      "assets/images/home_images/img_1.png",
      "assets/images/hover_card_images/img.png",
      "assets/images/hover_card_images/img_1.png",
      "assets/images/hover_card_images/img_2.png",
      "assets/images/hover_card_images/img_3.png",
      "assets/images/container3/img.png",
      "assets/images/container4/img.png"
    ];

    for (String path in imagePaths) {
      debugPrint("Preloading: $path");
      await precacheImage(AssetImage(path), context);
    }

    debugPrint("All assets preloaded");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializationFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return const Homepage();
        } else {
          return const SplashScreen();
        }
      },
    );
  }
}
