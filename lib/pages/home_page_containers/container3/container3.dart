import 'package:flutter/cupertino.dart';
import 'package:hexham_pint/pages/home_page_containers/container3/container3rightpart.dart';
import 'package:hexham_pint/pages/home_page_containers/container3/mobileContainer3rightpart.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:hexham_pint/utils/imageStrings.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../responsiveLayout.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: const MobileContainer3(),
      desktopView: const DesktopContainer3(),
      tabletView: const TabletContainer3(),
      largeScreenView: const DesktopContainer3(),
    );
  }
}

class TabletContainer3 extends StatelessWidget {
  const TabletContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Constants.mobiledefaultpadding , horizontal: Constants.mobiledefaultpadding),
      constraints: BoxConstraints(
          minHeight: size.height*0.8
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Images.container3image, fit: BoxFit.fill, height: size.width*0.6,),
          MobileContainer3RightPart(size: size)
        ],
      ),
    );
  }
}

class MobileContainer3 extends StatelessWidget {
  const MobileContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Constants.mobiledefaultpadding , horizontal: Constants.mobiledefaultpadding),
      constraints: BoxConstraints(
          minHeight: size.height*0.8
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Images.container3image, fit: BoxFit.fill, height: size.width*0.8,),
          MobileContainer3RightPart(size: size)
        ],
      ),
    );
  }
}

class DesktopContainer3 extends StatelessWidget {
  const DesktopContainer3({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: Constants.desktopdefaultPadding , horizontal: 70),
      constraints: BoxConstraints(
        minHeight: Constants.desktoopheight *0.8
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(Images.container3image, fit: BoxFit.fill, height: Constants.desktoopheight/1.5,),
          Container3RightPart(size: size)
        ],
      ),
    );
  }
}
