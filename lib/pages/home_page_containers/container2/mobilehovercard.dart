import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/colors.dart';

class MobileHoverCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const MobileHoverCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double cardWidth = size.width * 0.66; // 70% of screen width
    double cardHeight = size.width<390 && size.width>350? size.height * 0.48: size.height * 0.35; // 40% of screen height

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: cardHeight,
          width: cardWidth,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              topLeft: Radius.zero,
              bottomRight: Radius.zero,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                spreadRadius: 5,
                blurRadius: 20,
                offset: Offset(0, 15),
              ),
            ],
          ),
        ),
        Positioned(
          top: -size.height * 0.18, // Adjust based on screen height
          left: cardWidth * 0.120, // Center horizontally relative to card
          child: Container(
            height: cardHeight * 0.8, // Adjust size of the circular image
            width: cardWidth * 0.8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 15,
                  offset: Offset(0, 5),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: cardHeight * 0.3,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            width: cardWidth,
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22, // Responsive font size
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Container(
                  height: cardHeight,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          description,
                          style: const TextStyle(
                              fontSize: 17, // Responsive font size
                              color: Colors.black,
                              fontFamily: "Inter"
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          width: 40,
                          height: 30,
                          alignment: Alignment.center, // Align text in the center
                          decoration: BoxDecoration(
                            color: AppColors.buttonColor, // Background color
                            borderRadius: const BorderRadius.only(
                              topRight: Radius.circular(10), // Rounded corner
                              bottomLeft: Radius.circular(10), // Rounded corner
                              topLeft: Radius.zero, // Sharp corner
                              bottomRight: Radius.zero, // Sharp corner
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.25), // Shadow color with opacity
                                spreadRadius: 2, // Spread of the shadow
                                blurRadius: 8, // Blur effect
                                offset: const Offset(2, 4), // Shadow offset (x, y)
                              ),
                            ],
                          ),
                          child: const Text(
                            "50\$",
                            style: TextStyle(
                              color: Colors.white, // Text color
                              // fontWeight: FontWeight.bold, // Bold text
                              fontSize: 17, // Font size
                            ),
                            textAlign: TextAlign.center, // Center alignment for text
                          ),
                        )
                      ],
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ],
    );
  }
}
