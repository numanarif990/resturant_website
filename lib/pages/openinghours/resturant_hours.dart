import 'package:flutter/material.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../responsiveLayout.dart';

class RestaurantHours extends StatelessWidget {
  final Map<String, String> hours = {
    "Monday": "1:00 AM - 11:00 PM",
    "Tuesday": "1:00 AM - 11:00 PM",
    "Wednesday": "1:00 AM - 11:00 PM",
    "Thursday": "1:00 AM - 11:00 PM",
    "Friday": "1:00 AM - 11:00 PM",
    "Saturday": "1:00 AM - 11:00 PM",
    "Sunday": "1:00 AM - 11:00 PM",
  };

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: RestaurantHoursMobile(hours: hours),
      desktopView: RestaurantHoursDesktop(hours: hours),
      tabletView: ResturantHoursTablet(hours: hours),
      largeScreenView: RestaurantHoursDesktop(hours: hours),
    );
  }
}
class ResturantHoursTablet extends StatelessWidget {
  final Map<String, String> hours;
  const ResturantHoursTablet({required this.hours});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          minHeight: size.height*0.45
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
              maxWidth: size.width*0.65,
              minHeight: size.height*0.35
          ),
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, color: Colors.black, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Opening Hours",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ...hours.entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            entry.key,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        entry.value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}


class RestaurantHoursMobile extends StatelessWidget {
  final Map<String, String> hours;

  const RestaurantHoursMobile({required this.hours});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          minHeight: size.height*0.5
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
              maxWidth: size.width*0.8,
              minHeight: size.height*0.4
          ),
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, color: Colors.black, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Opening Hours",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ...hours.entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            entry.key,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        entry.value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantHoursDesktop extends StatelessWidget {
  final Map<String, String> hours;

  const RestaurantHoursDesktop({required this.hours});

  @override
  Widget build(BuildContext context) {

    return Container(
      constraints: BoxConstraints(
        minHeight: Constants.desktoopheight*0.7
      ),
      child: Center(
        child: Container(
          constraints: BoxConstraints(
            maxWidth: Constants.desktopwidth*0.3,
            minHeight: Constants.desktoopheight*0.5
          ),
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.access_time, color: Colors.black, size: 24),
                  SizedBox(width: 8),
                  Text(
                    "Opening Hours",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ...hours.entries.map((entry) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: AppColors.primaryColor,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            entry.key,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        entry.value,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
