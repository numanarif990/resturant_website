import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/pages/aboutus.dart';
import 'package:hexham_pint/pages/contactus.dart';
import 'package:hexham_pint/pages/homepage.dart';
import 'package:hexham_pint/pages/menu.dart';
import 'package:hexham_pint/pages/openigHours.dart';
import 'package:hexham_pint/pages/table_booking.dart';
import 'package:hexham_pint/utils/colors.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hexham Pint",
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'David Libre',
        brightness: Brightness.light,
        primaryColor: AppColors.primaryColor,
      ),
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 500),
      home: const Homepage(),
      getPages: [
        GetPage(name: '/', page: ()=> const Homepage()),
        GetPage(name: "/aboutus", page: ()=> const Aboutus()),
        GetPage(name: "/contactus", page: ()=> const Contactus()),
        GetPage(name: "/openinghours", page: ()=> const Openighours()),
        GetPage(name: "/menu", page: ()=> const Menu()),
        GetPage(name: "/tableBooking", page: ()=> const TableBooking())
      ],
    );
  }
}

//The website is build by numan ch