import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FormController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final messageController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void sendMessage() async {
    if (formKey.currentState!.validate()) {
      final name = nameController.text.trim();
      final email = emailController.text.trim();
      final phone = phoneController.text.trim();
      final message = messageController.text.trim();

      final mailUrl = Uri(
        scheme: 'mailto',
        path: 'clearbusinessbyadrian@gmail.com', // Replace with the owner's email
        query: 'subject=Message from $name&body=$message%0A%0APhone: $phone%0AEmail: $email',
      );

      if (await canLaunchUrl(mailUrl)) {
        await launchUrl(mailUrl);
      } else {
        Get.snackbar('Error', 'Could not send email.');
      }
    }
  }
}