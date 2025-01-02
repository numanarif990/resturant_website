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
    // Initialize future for future builder
    initializationFuture = _initializeApp();
  }

  Future<void> _initializeApp() async {
    try {
      // Wait for the splash screen for 2 seconds
      await Future.delayed(const Duration(seconds: 3));
      // Preload assets after 2 seconds
      _preloadAssetsInBackground();
    } catch (e) {
      debugPrint("Error during initialization: $e");
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // You can safely access inherited widgets like MediaQuery here
    debugPrint("Dependencies changed, MediaQuery or other inherited widgets can be accessed");
  }

  Future<void> _preloadAssetsInBackground() async {
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
      // Preload the images
      await precacheImage(AssetImage(path), context);
    }

    debugPrint("All assets preloaded in background");
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: initializationFuture,
      builder: (context, snapshot) {
        // If initialization is done, show homepage
        if (snapshot.connectionState == ConnectionState.done) {
          return const Homepage();
        } else {
          // Show splash screen while loading
          return const SplashScreen();
        }
      },
    );
  }
}
