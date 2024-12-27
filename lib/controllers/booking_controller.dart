import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BookingController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberOfPersonsController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController timeController = TextEditingController();
  final TextEditingController partySizeController = TextEditingController();

  void submitForm() async {
    if (formKey.currentState!.validate()) {
      final String name = nameController.text.trim();
      final String phoneNumber = phoneNumberController.text.trim();
      final String email = emailController.text.trim();
      final String numberOfPersons = numberOfPersonsController.text.trim();
      final String date = dateController.text.trim();
      final String time = timeController.text.trim();
      final String partySize = partySizeController.text.trim();

      final String emailBody = """
    Booking Details:
    Name:              $name
    Phone Number:      $phoneNumber
    Email:             $email
    Number of Persons: $numberOfPersons
    Date:              $date
    Time:              $time
    Party Size:        $partySize
    """;

      final Uri mailUrl = Uri(
        scheme: 'mailto',
        path: 'clearbusinessbyadrian@gmail.com', // Replace with the owner's email
        query: 'subject=${Uri.encodeComponent("Table Booking Details")}&body=${Uri.encodeComponent(emailBody)}',
      );

      try {
        if (await canLaunchUrl(mailUrl)) {
          await launchUrl(mailUrl, mode: LaunchMode.externalApplication);
          Get.snackbar(
            'Success',
            'Opening email client to send booking details.',
            snackPosition: SnackPosition.BOTTOM,
          );
        } else {
          throw 'Could not open email client';
        }
      } catch (e) {
        Get.snackbar(
          'Error',
          'Failed to open email client. Please try again.',
          snackPosition: SnackPosition.BOTTOM,
        );
      }
    }
  }

}
