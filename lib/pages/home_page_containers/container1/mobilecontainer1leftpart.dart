import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/colors.dart';
import '../../../utils/customElevatedButton.dart';

class MobileContainer1LeftPart extends StatelessWidget {
  const MobileContainer1LeftPart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: size.width*0.8
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text("We provide the \nbest food for you",style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, height: 0),),
          SizedBox(height: size.height*0.03,),
          const Text("Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor incididunt\nut labore et dolore magna aliqua.", style: TextStyle(fontFamily: "Inter"),textAlign: TextAlign.center,),
          SizedBox(height: size.height*0.03,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomElevatedButton(text: "Menu", color: AppColors.buttonColor,onTap: (){Get.toNamed("/menu");},),
              SizedBox(width: size.width /50,),
              CustomElevatedButton(text: "Book a table",color: AppColors.primaryColor,onTap: (){Get.toNamed("/tableBooking");},)
            ],
          )
        ],
      ),
    );
  }
}