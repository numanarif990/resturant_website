import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hexham_pint/pages/contactus_containers/desktopresponsiveform.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:ui' as ui;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:html'; // For IFrameElement
import 'package:flutter/foundation.dart';

import '../../responsiveLayout.dart'; // For kIsWeb
class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileView: MobileCotactUsContainer1(),
      desktopView: DesktopContactUsContainer1(),
      tabletView: TabletContactUsContainer1(),
      largeScreenView: DesktopContactUsContainer1(),
    );
  }
}

class TabletContactUsContainer1 extends StatelessWidget {
  const TabletContactUsContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          minHeight: size.height
      ),
      child: Column(
        children: [
          Column(
            children: [
              const Text("Contact Us",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Column(
                children: [
                  title(data: "Phone"),
                  SizedBox(height: 10,),
                  PhoneNumber(number: "0141 611 2942"),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 10,),
                  title(data: "Mail"),
                  SizedBox(height: 10,),
                  Mail(mail: "clearbusinessbyadrian@gmail.com"),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 10,),
                  title(data: "Address"),
                  SizedBox(height: 10,),
                  Address(),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(height: size.height*0.3,
                width: size.width*0.6,
                child: const MapLocation(),
              ),
              const SizedBox(height: 10,),
              DesktopForm()
            ],
          )

        ],
      ),
    );
  }
}


class MobileCotactUsContainer1 extends StatelessWidget {
  const MobileCotactUsContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints(
          minHeight: size.height
      ),
      child: Column(
        children: [
          Column(
            children: [
              const Text("Contact Us",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Column(
                children: [
                  title(data: "Phone"),
                  SizedBox(height: 10,),
                  PhoneNumber(number: "0141 611 2942"),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 10,),
                  title(data: "Mail"),
                  SizedBox(height: 10,),
                  Mail(mail: "clearbusinessbyadrian@gmail.com"),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 10,),
                  title(data: "Address"),
                  SizedBox(height: 10,),
                  Address(),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const SizedBox(height: 20,),
              SizedBox(height: size.height*0.3,
                width: size.width*0.8,
                child: const MapLocation(),
              ),
              const SizedBox(height: 10,),
             DesktopForm()
            ],
          )

        ],
      ),
    );
  }
}

class DesktopContactUsContainer1 extends StatelessWidget {
  const DesktopContactUsContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: Constants.desktoopheight
      ),
      child: Column(
        children: [
          Column(
            children: [
              const Text("Contact Us",style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
              const Column(
                children: [
                  title(data: "Phone"),
                  SizedBox(height: 10,),
                  PhoneNumber(number: "0141 611 2942"),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 10,),
                  title(data: "Mail"),
                  SizedBox(height: 10,),
                  Mail(mail: "clearbusinessbyadrian@gmail.com"),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const Column(
                children: [
                  SizedBox(height: 10,),
                  title(data: "Address"),
                  SizedBox(height: 10,),
                  Address(),
                  SizedBox(height: 10,),
                  Underline()
                ],
              ),
              const SizedBox(height: 10,),
              SizedBox(height: Constants.desktoopheight*0.45,
              width: Constants.desktopwidth*0.45,
                child: const MapLocation(),
              ),
              const SizedBox(height: 10,),
              DesktopForm()

            ],
          )
          
        ],
      ),
    );
  }
}

class title extends StatelessWidget {
  final String data;
  const title({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.withOpacity(0.2),
      ),
      child: Text(data, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
    );
  }
}

class PhoneNumber extends StatelessWidget {
  final String number;
  const PhoneNumber({super.key, required this.number});
  void _launchPhoneDialer(String phoneNumber) async {
    final Uri phoneUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _launchPhoneDialer(number),
        // Add your phone number here
        child: Text(
          number,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Inter",
            // fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}

class Underline extends StatelessWidget {
  const Underline({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width*0.5,
      height: 1,
      color: Colors.grey,
    );
  }
}

class Mail extends StatelessWidget {
  final String mail;
  const Mail({super.key , required this.mail});
  void _launchEmailApp(String email) async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query:
      'subject=Hello&body=Please reach out to me.', // You can modify the subject and body
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    } else {
      throw 'Could not launch $emailUri';
    }
  }
  @override
  Widget build(BuildContext context) {
    return  MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _launchEmailApp(mail),
        // Add your email address here
        child: Text(
          mail,
          style: TextStyle(
            fontSize: 18,
            fontFamily: "Inter",
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}

class Address extends StatelessWidget {
  const Address({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Priestpopple, Hexham, \nNorthumberland, NE46 1PH",style: TextStyle(
      fontSize: 18,
      fontFamily: "Inter",
      color: AppColors.primaryColor,
    ),
      textAlign: TextAlign.center,
    );
  }
}

class MapLocation extends StatefulWidget {
  const MapLocation({super.key});

  @override
  State<MapLocation> createState() => _MapLocationState();
}

class _MapLocationState extends State<MapLocation> {
  final String viewType = 'iframeElement';

  @override
  void initState() {
    super.initState();

    if (kIsWeb) {
      // Register the iframe view factory
      ui.platformViewRegistry.registerViewFactory(viewType, (int viewId) {
        final iframe = IFrameElement()
          ..width = '800'
          ..height = '600'
          ..src =
              'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1366.3310858097552!2d74.3653847694755!3d32.83854162347594!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391e574ce3e2a365%3A0x815ae03609611cbc!2sMD%20House%20and%20MD%20Colony!5e0!3m2!1sen!2s!4v1735310932107!5m2!1sen!2s'
          ..style.border = 'none';

        return iframe;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: kIsWeb
          ? SizedBox(
        width: 800,
        height: 600,
        child: HtmlElementView(viewType: viewType),
      )
          : const Text('Iframes are only supported on the web.'),
    );
  }
}