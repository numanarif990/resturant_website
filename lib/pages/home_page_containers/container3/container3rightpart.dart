import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/constants.dart';
import '../../../utils/customElevatedButton.dart';

class Container3RightPart extends StatelessWidget {
  const Container3RightPart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Wecome to Our \nRestaurant",style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, height: 0),),
        const SizedBox(height: Constants.desktoopheight/20,),
        const Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Inter"),),
        const SizedBox(height: Constants.desktoopheight /20,),
        Row(
          children: [
            CustomElevatedButton(text: "Menu", color: AppColors.buttonColor,onTap: (){Get.toNamed("/menu");},),
            const SizedBox(width: Constants.desktopwidth /55,),
            CustomElevatedButton(text: "Book a table",color: AppColors.primaryColor,onTap: (){Get.toNamed("/tableBooking");},)
          ],
        )
      ],
    );
  }
}