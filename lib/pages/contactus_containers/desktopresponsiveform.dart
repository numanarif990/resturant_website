import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/utils/customElevatedButton.dart';

import '../../controllers/form_controller.dart';


class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final TextInputType keyboardType;
  final String? Function(String?) validator;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.keyboardType = TextInputType.text,
    required this.validator,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.grey.shade200,
        hintStyle: TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.normal
        ),
        border: OutlineInputBorder(
          borderRadius: maxLines>1 ? BorderRadius.circular(10.0) : BorderRadius.circular(50.0),
          borderSide: BorderSide.none, // No border when not focused
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: maxLines>1 ? BorderRadius.circular(10.0) : BorderRadius.circular(50.0),
          borderSide: const BorderSide(color: Colors.blue, width: 2.0),
        ),
      ),
      maxLines: maxLines,
      keyboardType: keyboardType,
      validator: validator,
    );
  }
}



// Desktop Layout
class DesktopForm extends StatelessWidget {
  final FormController controller = Get.put(FormController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Form(
          key: controller.formKey,
          child: SizedBox(
            width: 600,
            child: Padding(
              padding: MediaQuery.of(context).size.width<600? EdgeInsets.all(25.0): EdgeInsets.all(25.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [

                  CustomTextField(
                    controller: controller.nameController,
                    hintText: 'Name',
                    validator: (value) => value!.isEmpty ? 'Name is required' : null,
                  ),
                  const SizedBox(height: 16),

                  CustomTextField(
                    controller: controller.emailController,
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) => !GetUtils.isEmail(value!) ? 'Enter a valid email' : null,
                  ),
                  const SizedBox(height: 16),

                  CustomTextField(
                    controller: controller.phoneController,
                    hintText: 'Phone Number',
                    keyboardType: TextInputType.phone,
                    validator: (value) => value!.isEmpty ? 'Phone number is required' : null,
                  ),
                  const SizedBox(height: 16),

                  CustomTextField(
                    controller: controller.messageController,
                    hintText: 'Message',
                    maxLines: 5,
                    validator: (value) => value!.isEmpty ? 'Message is required' : null,
                  ),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CustomElevatedButton(
                      text: "Send",
                      color: AppColors.buttonColor,
                      onTap: controller.sendMessage,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
