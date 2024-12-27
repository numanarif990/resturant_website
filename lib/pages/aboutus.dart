import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/aboutus_containers/container1.dart';
import 'package:hexham_pint/pages/home_page_containers/container4/container4.dart';
import 'package:hexham_pint/widgets/bottom/bottom.dart';
import 'package:hexham_pint/widgets/navbar/navbar.dart';

import '../utils/colors.dart';
class Aboutus extends StatelessWidget {
  const Aboutus({super.key});

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
            Container1(),
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
