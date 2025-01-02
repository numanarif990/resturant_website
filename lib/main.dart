import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/apploader.dart';
import 'package:hexham_pint/customScrollbehaviour.dart';
import 'package:hexham_pint/pages/aboutus.dart';
import 'package:hexham_pint/pages/contactus.dart';
import 'package:hexham_pint/pages/homepage.dart';
import 'package:hexham_pint/pages/menu.dart';
import 'package:hexham_pint/pages/openigHours.dart';
import 'package:hexham_pint/pages/table_booking.dart';
import 'package:hexham_pint/splashscreen.dart';
import 'package:hexham_pint/utils/colors.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double speedFactor = MediaQuery.of(context).size.width < 600 ? 2.0 : 5.0;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hexham Pint",
      scrollBehavior: CustomScrollBehavior(speedFactor: speedFactor),
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'David Libre',
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
      ),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const AppLoader(),
      getPages: [
        GetPage(name: '/', page: () => const SplashScreen()),
        GetPage(name: '/homepage', page: () => const Homepage()),
        GetPage(name: "/aboutus", page: () => const Aboutus()),
        GetPage(name: "/contactus", page: () => const Contactus()),
        GetPage(name: "/openinghours", page: () => const Openighours()),
        GetPage(name: "/menu", page: () => const Menu()),
        GetPage(name: "/tableBooking", page: () => const TableBooking()),
      ],
    );
  }
}