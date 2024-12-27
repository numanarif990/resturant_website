import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/navButtonController.dart';
import '../../utils/colors.dart';

class NavButton extends StatelessWidget {
  final String text;
  final Color color;
  final double width;
  final VoidCallback onTap;

  const NavButton({
    super.key,
    required this.text,
    required this.color,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final NavButtonController controller = Get.put(NavButtonController(), tag: text);

    return MouseRegion(
      onEnter: (_) => controller.setHover(true),
      onExit: (_) => controller.setHover(false),
      cursor: SystemMouseCursors.click,
      child: Material(
        color: Colors.transparent, // Ensure no background color is applied
        child: InkWell(
          onTap: onTap,
          highlightColor: Colors.transparent, // Remove highlight color
          splashColor: Colors.transparent, // Remove splash color
          hoverColor: Colors.transparent, // Remove hover color
          child: Obx(() => Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: controller.isHovered.value ? AppColors.primaryColor : color,
                    fontSize: 13,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.normal,
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeOut,
                  height: 1,
                  width: controller.isHovered.value ? width : 0,
                  color: AppColors.primaryColor,
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}