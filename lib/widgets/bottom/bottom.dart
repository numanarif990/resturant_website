import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../responsiveLayout.dart';
import 'bottomicon.dart';
class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: const MobileBottom(),
      desktopView: const DesktopBottom(),
      tabletView: const TabletBottom(),
      largeScreenView: const DesktopBottom(),
    );
  }
}

class TabletBottom extends StatelessWidget {
  const TabletBottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.grey.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: Constants.desktopdefaultPadding),
      constraints: BoxConstraints(
        minHeight: size.height * 0.045,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 1,),
                const Text("Hexhamp Int",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                const SizedBox(height: 1,),
                Container(color: Colors.grey,
                  margin: const EdgeInsets.all(8),
                  width: size.width*0.8,
                  height:  1,
                ),
                const SizedBox(height: 1,),
                const Text(
                  "Copyright © 2024 hexhampint.com",
                  style: TextStyle(
                      fontFamily: "Inter"
                  ),
                ),
              ],
            ),

            const Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomIcon(
                    url: 'https://github.com/numanarif990',
                    color: Color(0xffFD07B0), icon: FontAwesomeIcons.instagram,),
                  SizedBox(
                    width:  Constants.desktopwidth * 0.005,
                  ),
                  BottomIcon(
                    url: 'https://github.com/numanarif990',
                    color: Color(0xff0866FF), icon: FontAwesomeIcons.facebook,),
                  SizedBox(
                    width:  Constants.desktopwidth * 0.005,
                  ),
                  BottomIcon(
                    url: 'https://github.com/numanarif990',
                    color: Color(0xffFF0033), icon: FontAwesomeIcons.youtube,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

class MobileBottom extends StatelessWidget {
  const MobileBottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.grey.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: Constants.desktopdefaultPadding),
      constraints: BoxConstraints(
        minHeight: size.height * 0.045,
      ),
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 1,),
                const Text("Hexhamp Int",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                const SizedBox(height: 1,),
                Container(color: Colors.grey,
                  margin: const EdgeInsets.all(8),
                  width: size.width*0.8,
                  height:  1,
                ),
                const SizedBox(height: 1,),
                const Text(
                  "Copyright © 2024 hexhampint.com",
                  style: TextStyle(
                      fontFamily: "Inter"
                  ),
                ),
              ],
            ),

            const Align(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BottomIcon(
                    url: 'https://github.com/numanarif990',
                    color: Color(0xffFD07B0), icon: FontAwesomeIcons.instagram,),
                  SizedBox(
                    width:  Constants.desktopwidth * 0.005,
                  ),
                  BottomIcon(
                    url: 'https://github.com/numanarif990',
                    color: Color(0xff0866FF), icon: FontAwesomeIcons.facebook,),
                  SizedBox(
                    width:  Constants.desktopwidth * 0.005,
                  ),
                  BottomIcon(
                    url: 'https://github.com/numanarif990',
                    color: Color(0xffFF0033), icon: FontAwesomeIcons.youtube,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

class DesktopBottom extends StatelessWidget {
  const DesktopBottom({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // color: Colors.grey.withOpacity(0.2),
      padding: const EdgeInsets.symmetric(horizontal: Constants.desktopdefaultPadding),
      constraints: const BoxConstraints(
        minHeight: Constants.desktopwidth * 0.045,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
           Row(
             children: [
               const Text("Hexhamp Int",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
               const SizedBox(width: 10,),
               Container(color: Colors.grey,
                 margin: const EdgeInsets.all(8),
                 width: 1,
                 height:  Constants.desktoopheight * 0.045,
               ),
               const SizedBox(width: 10,),
               const Text(
                 "Copyright © 2024 hexhampint.com",
                 style: TextStyle(
                     fontFamily: "Inter"
                 ),
               ),
             ],
           ),

            const Row(
              children: [
                BottomIcon(
                  url: 'https://github.com/numanarif990',
                  color: Color(0xffFD07B0), icon: FontAwesomeIcons.instagram,),
                SizedBox(
                  width:  Constants.desktopwidth * 0.005,
                ),
                BottomIcon(
                  url: 'https://github.com/numanarif990',
                  color: Color(0xff0866FF), icon: FontAwesomeIcons.facebook,),
                SizedBox(
                  width:  Constants.desktopwidth * 0.005,
                ),
                BottomIcon(
                  url: 'https://github.com/numanarif990',
                  color: Color(0xffFF0033), icon: FontAwesomeIcons.youtube,),
              ],
            )

          ],
        ),
      ),
    );
  }
}

