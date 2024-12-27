import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/home_page_containers/container2/tablethovercard.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/utils/imageStrings.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../responsiveLayout.dart';
import '../../../utils/constants.dart';
import 'hovercard.dart';
import 'mobilehovercard.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: const MobileContainer2(),
      desktopView: const DesktopContainer2(),
      tabletView: const TabletContainer2(),
      largeScreenView: const DesktopContainer2(),
    );
  }
}

class TabletContainer2 extends StatelessWidget {
  const TabletContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      constraints: BoxConstraints(minHeight: size.height*2),
      padding: const EdgeInsets.symmetric(horizontal: Constants.mobiledefaultpadding , vertical: Constants.mobiledefaultpadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            children: [
              Text(
                "Our Special Dishes",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, height: 1.5),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididunt ",
                style: TextStyle(fontFamily: "Inter"), textAlign: TextAlign.center,
              )
            ],
          ),
          const SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: size.height*0.23,),
              const TabletHoverCard(image: Images.hovercardimage1, title: "Lumpia with Suace", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.23,),
              const TabletHoverCard(image: Images.hovercardimage2, title: "Fish and Veggie", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.23,),
              const TabletHoverCard(image: Images.hovercardimage3, title: "Tofu Chili", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.23,),
              const TabletHoverCard(image: Images.hovercardimage4, title: "Egg and Cocumber", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.1,),

            ],
          )
        ],
      ),
    );
  }
}

class MobileContainer2 extends StatelessWidget {
  const MobileContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      constraints: BoxConstraints(minHeight: size.height*2),
      padding: const EdgeInsets.symmetric(horizontal: Constants.mobiledefaultpadding , vertical: Constants.mobiledefaultpadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            children: [
              Text(
                "Our Special Dishes",
                style: TextStyle(
                    fontSize: 30, fontWeight: FontWeight.bold, height: 1.5),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididunt ",
                style: TextStyle(fontFamily: "Inter"), textAlign: TextAlign.center,
              )
            ],
          ),
          const SizedBox(height: 20,),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: size.height*0.2,),
              const MobileHoverCard(image: Images.hovercardimage1, title: "Lumpia with Suace", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.2,),
              const MobileHoverCard(image: Images.hovercardimage2, title: "Fish and Veggie", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.2,),
              const MobileHoverCard(image: Images.hovercardimage3, title: "Tofu Chili", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.2,),
              const MobileHoverCard(image: Images.hovercardimage4, title: "Egg and Cocumber", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              SizedBox(height: size.height*0.1,),

            ],
          )
        ],
      ),
    );
  }
}

class DesktopContainer2 extends StatelessWidget {
  const DesktopContainer2({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.grey.withOpacity(0.1),
      constraints: BoxConstraints(minHeight: Constants.desktoopheight*0.9),
      padding: const EdgeInsets.symmetric(horizontal: Constants.desktopdefaultPadding , vertical: Constants.desktopdefaultPadding),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                "Our Special Dishes",
                style: TextStyle(
                    fontSize: 50, fontWeight: FontWeight.bold, height: 1.5),
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur \nadipiscing elit, sed do eiusmod tempor incididunt ",
                style: TextStyle(fontFamily: "Inter"), textAlign: TextAlign.center,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HoverCard(image: Images.hovercardimage1, title: "Lumpia with Suace", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              HoverCard(image: Images.hovercardimage2, title: "Fish and Veggie", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              HoverCard(image: Images.hovercardimage3, title: "Tofu Chili", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor "),
              HoverCard(image: Images.hovercardimage4, title: "Egg and Cocumber", description: "Lorem ipsum dolor sit , consectetur adipiscing elit, sed do eiusmod tempor ")

            ],
          )
        ],
      ),
    );
  }
}





