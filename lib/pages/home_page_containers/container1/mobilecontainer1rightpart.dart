import 'package:flutter/cupertino.dart';

import '../../../utils/imageStrings.dart';

class MobileContainer1RightPart extends StatelessWidget {

  const MobileContainer1RightPart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(Images.homeimage1, fit: BoxFit.fill, height: size.height/2.5,),
        Positioned(
            left: -size.width / 6, // Adjusted to position half of the second image outside the first
            bottom: 0,
            child: Image.asset(Images.homeimage2, fit: BoxFit.fill, height: size.height/6,))
      ],
    );
  }
}
