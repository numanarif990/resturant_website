import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onTap; // Added onTap as an argument

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.color,
    required this.onTap, // Required onTap argument
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        shape: MaterialStateProperty.all(
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), // Rounded top left
              topRight: Radius.zero, // Edgy top right
              bottomLeft: Radius.zero, // Edgy bottom left
              bottomRight: Radius.circular(10), // Rounded bottom right
            ),
          ),
        ),
        minimumSize: MaterialStateProperty.all(Size(100, 54)), // Set width and height
      ),
      onPressed: onTap, // Use onTap argument
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
