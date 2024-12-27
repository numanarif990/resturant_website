import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/openinghours/resturant_hours.dart';

import '../utils/colors.dart';
import '../widgets/bottom/bottom.dart';
import '../widgets/navbar/navbar.dart';
import 'home_page_containers/container4/container4.dart';
class Openighours extends StatelessWidget {
  const Openighours({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            Container4(),
            RestaurantHours(),
            Container(
              width: size.width,
              height: 0.2,
              color: AppColors.buttonColor,
            ),
            Bottom()
          ],
        ),
      )
    );
  }
}
