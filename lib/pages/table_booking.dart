import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/table_booking_containers/booking_form.dart';

import '../utils/colors.dart';
import '../widgets/bottom/bottom.dart';
import '../widgets/navbar/navbar.dart';
import 'home_page_containers/container4/container4.dart';

class TableBooking extends StatelessWidget {
  const TableBooking({super.key});

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
            BookingForm(),
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