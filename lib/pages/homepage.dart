import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/home_page_containers/container1/container1.dart';
import 'package:hexham_pint/pages/home_page_containers/container2/container2.dart';
import 'package:hexham_pint/pages/home_page_containers/container3/container3.dart';
import 'package:hexham_pint/pages/home_page_containers/container4/container4.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/widgets/bottom/bottom.dart';
import 'package:hexham_pint/widgets/navbar/navbar.dart';
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
           const Navbar(),
            const Container1(),
            Container(
              width: size.width,
              height: 0.2,
              color: AppColors.buttonColor,
            ),
            const Container2(),
            Container(
              width: size.width,
              height: 0.2,
              color: AppColors.buttonColor,
            ),
            const Container3(),
            Container(
              width: size.width,
              height: 0.2,
              color: AppColors.buttonColor,
            ),
            const Container4(),
            Container(
              width: size.width,
              height: 0.2,
              color: AppColors.buttonColor,
            ),
            Bottom()
          ],
        ),
      ),
    );
  }
}
