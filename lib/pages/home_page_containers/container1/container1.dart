import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/home_page_containers/container1/mobilecontainer1leftpart.dart';
import 'package:hexham_pint/responsiveLayout.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'container1rightpart.dart';
import 'containerleftpart.dart';
import 'mobilecontainer1rightpart.dart';
class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileContainer1(),
      desktopView: DesktopContainer1(),
      tabletView: TabletContainer1(),
      largeScreenView: DesktopContainer1(),
    );
  }
}


class MobileContainer1 extends StatelessWidget {
  const MobileContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          minHeight: size.height
      ),
      padding: const EdgeInsets.symmetric(horizontal: Constants.mobiledefaultpadding , vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
       MobileContainer1RightPart(size: size),
          MobileContainer1LeftPart(size: size)
        ],
      ),
    );
  }
}



class TabletContainer1 extends StatelessWidget {
  const TabletContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          minHeight: size.height
      ),
      padding: const EdgeInsets.symmetric(horizontal: Constants.mobiledefaultpadding , vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MobileContainer1RightPart(size: size),
          MobileContainer1LeftPart(size: size)
        ],
      ),
    );
  }
}



class DesktopContainer1 extends StatelessWidget {
  const DesktopContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: const BoxConstraints(
        minHeight: Constants.desktoopheight*0.6
      ),
      padding: const EdgeInsets.symmetric(horizontal: Constants.desktopdefaultPadding , vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ContainerLeftPart(size: size),
          Container1RightPart(size: size)

        ],
      ),
    );
  }
}



