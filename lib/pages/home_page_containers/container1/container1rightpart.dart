import 'package:flutter/cupertino.dart';

import '../../../utils/constants.dart';
import '../../../utils/imageStrings.dart';

class Container1RightPart extends StatelessWidget {

  const Container1RightPart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(Images.homeimage1, fit: BoxFit.fill, height: Constants.desktoopheight/1.5,),
        Positioned(
            left: -Constants.desktopwidth / 12, // Adjusted to position half of the second image outside the first
            bottom: 0,
            child: Image.asset(Images.homeimage2, fit: BoxFit.fill, width: Constants.desktopwidth/7,))
      ],
    );
  }
}
