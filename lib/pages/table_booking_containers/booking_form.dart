
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:hexham_pint/utils/customElevatedButton.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../controllers/booking_controller.dart';
import '../../responsiveLayout.dart';
import '../../utils/colors.dart';

class BookingForm extends StatelessWidget {
  const BookingForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileBookingForm(),
      desktopView: DesktopBookingForm(),
      tabletView: TabletBookingForm(),
      largeScreenView: DesktopBookingForm(),
    );
  }
}


class TabletBookingForm extends StatelessWidget {
  const TabletBookingForm({super.key});

  @override
  Widget build(BuildContext context) {
    final BookingController controller = Get.put(BookingController());
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(Constants.mobiledefaultpadding),
      constraints: BoxConstraints(minHeight: size.height*0.85),
      child: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              const Text(
                "Book Now!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const SizedBox(height: 15),
              Form(
                key: controller.formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTextField(
                      controller: controller.nameController,
                      hintText: 'Name',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter your name' : null,
                    ),
                    CustomTextField(
                      controller: controller.phoneNumberController,
                      hintText: 'Phone Number',
                      validator: (value) => value!.isEmpty
                          ? 'Please enter your phone number'
                          : null,
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      hintText: 'Email',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter your email' : null,
                    ),
                    CustomTextField(
                      controller: controller.numberOfPersonsController,
                      hintText: 'Number of Persons',
                      validator: (value) => value!.isEmpty
                          ? 'Please enter the number of persons'
                          : null,
                    ),
                    CustomTextField(
                      controller: controller.dateController,
                      hintText: 'Select Date',
                      readOnly: true,
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: AppColors.primaryColor, // Header color
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primaryColor, // Button and header text color
                                ),
                                dialogBackgroundColor: Colors.white, // Background color
                                textTheme: const TextTheme(
                                  bodyMedium: TextStyle( // Updated to bodyMedium
                                    fontFamily: 'Inter', // Font family for the calendar
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );

                        if (selectedDate != null) {
                          controller.dateController.text =
                              DateFormat('yyyy-MM-dd').format(selectedDate);
                        }
                      },
                      validator: (value) => value!.isEmpty ? 'Please select a date' : null,
                    ),
                    CustomTextField(
                      controller: controller.timeController,
                      hintText: 'Select Time',
                      readOnly: true,
                      onTap: () async {
                        TimeOfDay? selectedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: AppColors.primaryColor, // Header and selected time color
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primaryColor, // Buttons and header color
                                ),
                                timePickerTheme: TimePickerThemeData(
                                  backgroundColor: Colors.white, // Background color
                                  hourMinuteTextStyle: const TextStyle(
                                    fontFamily: 'Inter', // Font family for the hour/minute text
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  dayPeriodTextStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  helpTextStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  hourMinuteShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );

                        if (selectedTime != null) {
                          controller.timeController.text = selectedTime.format(context);
                        }
                      },
                      validator: (value) => value!.isEmpty ? 'Please select a time' : null,
                    ),
                    CustomTextField(
                      controller: controller.partySizeController,
                      hintText: 'Party Size',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter party size' : null,
                    ),
                    CustomElevatedButton(text: "Submit", color: AppColors.buttonColor, onTap: controller.submitForm)

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Mobile Layout
class MobileBookingForm extends StatelessWidget {
  final BookingController controller = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
   return Container(
      padding: const EdgeInsets.all(Constants.mobiledefaultpadding),
      constraints: BoxConstraints(minHeight: size.height*0.9),
      child: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              const Text(
                "Book Now!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const SizedBox(height: 15),
              Form(
                key: controller.formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTextField(
                      controller: controller.nameController,
                      hintText: 'Name',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter your name' : null,
                    ),
                    CustomTextField(
                      controller: controller.phoneNumberController,
                      hintText: 'Phone Number',
                      validator: (value) => value!.isEmpty
                          ? 'Please enter your phone number'
                          : null,
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      hintText: 'Email',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter your email' : null,
                    ),
                    CustomTextField(
                      controller: controller.numberOfPersonsController,
                      hintText: 'Number of Persons',
                      validator: (value) => value!.isEmpty
                          ? 'Please enter the number of persons'
                          : null,
                    ),
                    CustomTextField(
                      controller: controller.dateController,
                      hintText: 'Select Date',
                      readOnly: true,
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: AppColors.primaryColor, // Header color
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primaryColor, // Button and header text color
                                ),
                                dialogBackgroundColor: Colors.white, // Background color
                                textTheme: const TextTheme(
                                  bodyMedium: TextStyle( // Updated to bodyMedium
                                    fontFamily: 'Inter', // Font family for the calendar
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );

                        if (selectedDate != null) {
                          controller.dateController.text =
                              DateFormat('yyyy-MM-dd').format(selectedDate);
                        }
                      },
                      validator: (value) => value!.isEmpty ? 'Please select a date' : null,
                    ),
                    CustomTextField(
                      controller: controller.timeController,
                      hintText: 'Select Time',
                      readOnly: true,
                      onTap: () async {
                        TimeOfDay? selectedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: AppColors.primaryColor, // Header and selected time color
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primaryColor, // Buttons and header color
                                ),
                                timePickerTheme: TimePickerThemeData(
                                  backgroundColor: Colors.white, // Background color
                                  hourMinuteTextStyle: const TextStyle(
                                    fontFamily: 'Inter', // Font family for the hour/minute text
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  dayPeriodTextStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  helpTextStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  hourMinuteShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );

                        if (selectedTime != null) {
                          controller.timeController.text = selectedTime.format(context);
                        }
                      },
                      validator: (value) => value!.isEmpty ? 'Please select a time' : null,
                    ),
                    CustomTextField(
                      controller: controller.partySizeController,
                      hintText: 'Party Size',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter party size' : null,
                    ),
                    CustomElevatedButton(text: "Submit", color: AppColors.buttonColor, onTap: controller.submitForm)

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Desktop Layout
class DesktopBookingForm extends StatelessWidget {
  final BookingController controller = Get.put(BookingController());

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.desktopdefaultPadding),
      constraints: BoxConstraints(minHeight: Constants.desktoopheight),
      child: Center(
        child: Container(
          width: 600,
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              const Text(
                "Book Now!",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
              ),
              const SizedBox(height: 15),
              Form(
                key: controller.formKey,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    CustomTextField(
                      controller: controller.nameController,
                      hintText: 'Name',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter your name' : null,
                    ),
                    CustomTextField(
                      controller: controller.phoneNumberController,
                      hintText: 'Phone Number',
                      validator: (value) => value!.isEmpty
                          ? 'Please enter your phone number'
                          : null,
                    ),
                    CustomTextField(
                      controller: controller.emailController,
                      hintText: 'Email',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter your email' : null,
                    ),
                    CustomTextField(
                      controller: controller.numberOfPersonsController,
                      hintText: 'Number of Persons',
                      validator: (value) => value!.isEmpty
                          ? 'Please enter the number of persons'
                          : null,
                    ),
                    CustomTextField(
                      controller: controller.dateController,
                      hintText: 'Select Date',
                      readOnly: true,
                      onTap: () async {
                        DateTime? selectedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime(2100),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: AppColors.primaryColor, // Header color
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primaryColor, // Button and header text color
                                ),
                                dialogBackgroundColor: Colors.white, // Background color
                                textTheme: const TextTheme(
                                  bodyMedium: TextStyle( // Updated to bodyMedium
                                    fontFamily: 'Inter', // Font family for the calendar
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );

                        if (selectedDate != null) {
                          controller.dateController.text =
                              DateFormat('yyyy-MM-dd').format(selectedDate);
                        }
                      },
                      validator: (value) => value!.isEmpty ? 'Please select a date' : null,
                    ),
                    CustomTextField(
                      controller: controller.timeController,
                      hintText: 'Select Time',
                      readOnly: true,
                      onTap: () async {
                        TimeOfDay? selectedTime = await showTimePicker(
                          context: context,
                          initialTime: TimeOfDay.now(),
                          builder: (BuildContext context, Widget? child) {
                            return Theme(
                              data: ThemeData.light().copyWith(
                                primaryColor: AppColors.primaryColor, // Header and selected time color
                                colorScheme: ColorScheme.light(
                                  primary: AppColors.primaryColor, // Buttons and header color
                                ),
                                timePickerTheme: TimePickerThemeData(
                                  backgroundColor: Colors.white, // Background color
                                  hourMinuteTextStyle: const TextStyle(
                                    fontFamily: 'Inter', // Font family for the hour/minute text
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  dayPeriodTextStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  helpTextStyle: const TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  hourMinuteShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    side: BorderSide(color: AppColors.primaryColor),
                                  ),
                                ),
                              ),
                              child: child!,
                            );
                          },
                        );

                        if (selectedTime != null) {
                          controller.timeController.text = selectedTime.format(context);
                        }
                      },
                      validator: (value) => value!.isEmpty ? 'Please select a time' : null,
                    ),
                    CustomTextField(
                      controller: controller.partySizeController,
                      hintText: 'Party Size',
                      validator: (value) =>
                      value!.isEmpty ? 'Please enter party size' : null,
                    ),
                    CustomElevatedButton(text: "Submit", color: AppColors.buttonColor, onTap: controller.submitForm)

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool readOnly;
  final VoidCallback? onTap;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    required this.validator,
    this.readOnly = false,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(hintText, style: const TextStyle(fontWeight: FontWeight.bold,fontFamily: "Inter")),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          readOnly: readOnly,
          onTap: onTap,
          style: const TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.normal
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontFamily: "Inter",
              fontWeight: FontWeight.normal
            ),
            filled: true,
            fillColor: Colors.grey.shade200,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
              borderSide: const BorderSide(color: Colors.blue, width: 2.0),
            ),
          ),
          validator: validator,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
