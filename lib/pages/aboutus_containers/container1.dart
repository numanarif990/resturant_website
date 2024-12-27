import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hexham_pint/utils/colors.dart';
import 'package:hexham_pint/utils/constants.dart';
import 'package:readmore/readmore.dart';

import '../../responsiveLayout.dart';


class Container1 extends StatelessWidget {
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

class TabletContainer1 extends StatelessWidget {
  const TabletContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: Constants.mobiledefaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Hexham Pint!",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const ReadMoreText(
            "Welcome to Hexham Pint! – a sanctuary for food lovers and the ultimate destination for anyone who craves an unforgettable dining experience. Here, we celebrate the art of culinary mastery and the magic that happens when flavors, textures, and aromas come together to create something truly special. At Hexham Pint, we are more than just a dining establishment; we are a story—a story of passion, innovation, and dedication. Nestled in the heart of [your city], our restaurant is a vibrant blend of tradition and modernity, offering a haven where families, friends, and food enthusiasts can gather to savor life’s most delectable moments. Every aspect of our restaurant is designed to deliver a unique and enriching experience that touches the senses and warms the heart. From the moment you step through our doors,\nyou’ll be embraced by an atmosphere that exudes warmth and charm. Our interiors are a harmonious blend of contemporary aesthetics and timeless elegance, creating a setting that is both comfortable and captivating. With dimmed lighting, soothing music, and thoughtful decor, we’ve created a space that invites you to relax and indulge. Whether you’re here for a romantic dinner, a family gathering, or a casual meal with friends, you’ll find the perfect ambiance to match the occasion.The soul of Hexham Pint! lies in our kitchen, where our talented chefs bring their passion to life. Each dish we serve is a masterpiece,\ncrafted with precision and care using the finest and freshest ingredients available. We work closely with local farmers and purveyors to source organic produce, sustainable seafood, and ethically raised meats. Our menu is an eclectic mix of culinary inspirations from around the world, ensuring there’s something to delight every palate. Start your journey with our appetizers, designed to whet your appetite and prepare you for the culinary adventure ahead. From our handcrafted artisan bread served with infused olive oils to our signature starters like crispy calamari with a zesty lemon aioli or our vibrant seasonal salads bursting with color and flavor, each bite sets the stage for what’s to come. For the main course, our menu features a diverse array of options that cater to every taste—from perfectly grilled steaks and succulent seafood to hearty pastas and innovative vegetarian dishes. Each plate is a harmonious symphony of flavors, meticulously balanced to ensure a dining experience that is both satisfying and unforgettable. No meal at Hexham Pint! is complete without indulging in our decadent desserts. Treat yourself to our velvety chocolate lava cake, creamy panna cotta, or a slice of our homemade cheesecake, each lovingly prepared to provide the perfect sweet ending to your meal. Pair your dessert with a cup of freshly brewed coffee or a selection from our curated tea menu for an experience that lingers long after the last bite. We also take pride in our exceptional beverage program, featuring a carefully curated wine list, handcrafted cocktails, and an impressive selection of craft beers. Whether you’re in the mood for a bold red wine, a crisp white, or a creative cocktail infused with fresh herbs and fruits, our skilled bartenders and knowledgeable staff are here to guide you to the perfect pairing. For those who prefer non-alcoholic options, we offer an array of mocktails, fresh juices, and specialty sodas that are as delightful as they are refreshing.",
            trimLines: 15,
            colorClickableText: Colors.blue,
            trimMode: TrimMode.Line,
            trimCollapsedText: '... Read More',
            trimExpandedText: ' Read Less',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            moreStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 16),
          Text(
            "Why Choose Us?",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.flame, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Exquisite Cuisine from Around the World",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.music_note, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Soothing Ambiance with Live Music",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.star, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Top-notch Service to Make You Feel Special",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.leaf_arrow_circlepath, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Fresh and Organic Ingredients in Every Dish",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.heart_fill, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "A Family-Friendly Environment Everyone Will Love",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Don’t Miss Out!",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Visit us today and treat your taste buds to an unforgettable journey. Whether it’s a romantic dinner, a family gathering, or a casual outing with friends, we promise to make your experience memorable.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}



class MobileContainer1 extends StatelessWidget {
  const MobileContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: Constants.mobiledefaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Hexham Pint!",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          const ReadMoreText(
            "Welcome to Hexham Pint! – a sanctuary for food lovers and the ultimate destination for anyone who craves an unforgettable dining experience. Here, we celebrate the art of culinary mastery and the magic that happens when flavors, textures, and aromas come together to create something truly special. At Hexham Pint, we are more than just a dining establishment; we are a story—a story of passion, innovation, and dedication. Nestled in the heart of [your city], our restaurant is a vibrant blend of tradition and modernity, offering a haven where families, friends, and food enthusiasts can gather to savor life’s most delectable moments. Every aspect of our restaurant is designed to deliver a unique and enriching experience that touches the senses and warms the heart. From the moment you step through our doors,\nyou’ll be embraced by an atmosphere that exudes warmth and charm. Our interiors are a harmonious blend of contemporary aesthetics and timeless elegance, creating a setting that is both comfortable and captivating. With dimmed lighting, soothing music, and thoughtful decor, we’ve created a space that invites you to relax and indulge. Whether you’re here for a romantic dinner, a family gathering, or a casual meal with friends, you’ll find the perfect ambiance to match the occasion.The soul of Hexham Pint! lies in our kitchen, where our talented chefs bring their passion to life. Each dish we serve is a masterpiece,\ncrafted with precision and care using the finest and freshest ingredients available. We work closely with local farmers and purveyors to source organic produce, sustainable seafood, and ethically raised meats. Our menu is an eclectic mix of culinary inspirations from around the world, ensuring there’s something to delight every palate. Start your journey with our appetizers, designed to whet your appetite and prepare you for the culinary adventure ahead. From our handcrafted artisan bread served with infused olive oils to our signature starters like crispy calamari with a zesty lemon aioli or our vibrant seasonal salads bursting with color and flavor, each bite sets the stage for what’s to come. For the main course, our menu features a diverse array of options that cater to every taste—from perfectly grilled steaks and succulent seafood to hearty pastas and innovative vegetarian dishes. Each plate is a harmonious symphony of flavors, meticulously balanced to ensure a dining experience that is both satisfying and unforgettable. No meal at Hexham Pint! is complete without indulging in our decadent desserts. Treat yourself to our velvety chocolate lava cake, creamy panna cotta, or a slice of our homemade cheesecake, each lovingly prepared to provide the perfect sweet ending to your meal. Pair your dessert with a cup of freshly brewed coffee or a selection from our curated tea menu for an experience that lingers long after the last bite. We also take pride in our exceptional beverage program, featuring a carefully curated wine list, handcrafted cocktails, and an impressive selection of craft beers. Whether you’re in the mood for a bold red wine, a crisp white, or a creative cocktail infused with fresh herbs and fruits, our skilled bartenders and knowledgeable staff are here to guide you to the perfect pairing. For those who prefer non-alcoholic options, we offer an array of mocktails, fresh juices, and specialty sodas that are as delightful as they are refreshing.",
            trimLines: 10,
            colorClickableText: Colors.blue,
            trimMode: TrimMode.Line,
            trimCollapsedText: '... Read More',
            trimExpandedText: ' Read Less',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
            moreStyle: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 16),
          Text(
            "Why Choose Us?",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.flame, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Exquisite Cuisine from Around the World",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.music_note, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Soothing Ambiance with Live Music",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.star, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Top-notch Service to Make You Feel Special",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.leaf_arrow_circlepath, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Fresh and Organic Ingredients in Every Dish",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.heart_fill, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "A Family-Friendly Environment Everyone Will Love",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Don’t Miss Out!",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Visit us today and treat your taste buds to an unforgettable journey. Whether it’s a romantic dinner, a family gathering, or a casual outing with friends, we promise to make your experience memorable.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}


class DesktopContainer1 extends StatelessWidget {
  const DesktopContainer1({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: Constants.desktopdefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Hexham Pint!",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Welcome to Hexham Pint! – a sanctuary for food lovers and the ultimate destination for anyone who craves an unforgettable dining experience. Here, we celebrate the art of culinary mastery and the magic that happens when flavors, textures, and aromas come together to create something truly special. At Hexham Pint, we are more than just a dining establishment; we are a story—a story of passion, innovation, and dedication. Nestled in the heart of [your city], our restaurant is a vibrant blend of tradition and modernity, offering a haven where families, friends, and food enthusiasts can gather to savor life’s most delectable moments. Every aspect of our restaurant is designed to deliver a unique and enriching experience that touches the senses and warms the heart. From the moment you step through our doors,\nyou’ll be embraced by an atmosphere that exudes warmth and charm. Our interiors are a harmonious blend of contemporary aesthetics and timeless elegance, creating a setting that is both comfortable and captivating. With dimmed lighting, soothing music, and thoughtful decor, we’ve created a space that invites you to relax and indulge. Whether you’re here for a romantic dinner, a family gathering, or a casual meal with friends, you’ll find the perfect ambiance to match the occasion.The soul of Hexham Pint! lies in our kitchen, where our talented chefs bring their passion to life. Each dish we serve is a masterpiece,\ncrafted with precision and care using the finest and freshest ingredients available. We work closely with local farmers and purveyors to source organic produce, sustainable seafood, and ethically raised meats. Our menu is an eclectic mix of culinary inspirations from around the world, ensuring there’s something to delight every palate. Start your journey with our appetizers, designed to whet your appetite and prepare you for the culinary adventure ahead. From our handcrafted artisan bread served with infused olive oils to our signature starters like crispy calamari with a zesty lemon aioli or our vibrant seasonal salads bursting with color and flavor, each bite sets the stage for what’s to come. For the main course, our menu features a diverse array of options that cater to every taste—from perfectly grilled steaks and succulent seafood to hearty pastas and innovative vegetarian dishes. Each plate is a harmonious symphony of flavors, meticulously balanced to ensure a dining experience that is both satisfying and unforgettable. No meal at Hexham Pint! is complete without indulging in our decadent desserts. Treat yourself to our velvety chocolate lava cake, creamy panna cotta, or a slice of our homemade cheesecake, each lovingly prepared to provide the perfect sweet ending to your meal. Pair your dessert with a cup of freshly brewed coffee or a selection from our curated tea menu for an experience that lingers long after the last bite. We also take pride in our exceptional beverage program, featuring a carefully curated wine list, handcrafted cocktails, and an impressive selection of craft beers. Whether you’re in the mood for a bold red wine, a crisp white, or a creative cocktail infused with fresh herbs and fruits, our skilled bartenders and knowledgeable staff are here to guide you to the perfect pairing. For those who prefer non-alcoholic options, we offer an array of mocktails, fresh juices, and specialty sodas that are as delightful as they are refreshing.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Why Choose Us?",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(CupertinoIcons.flame, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Exquisite Cuisine from Around the World",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.music_note, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Soothing Ambiance with Live Music",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.star, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Top-notch Service to Make You Feel Special",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.leaf_arrow_circlepath, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "Fresh and Organic Ingredients in Every Dish",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Icon(CupertinoIcons.heart_fill, color: AppColors.primaryColor),
                  const SizedBox(width: 8),
                  const Expanded(
                    child: Text(
                      "A Family-Friendly Environment Everyone Will Love",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "Don’t Miss Out!",
            style: TextStyle(
              color: AppColors.buttonColor,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            "Visit us today and treat your taste buds to an unforgettable journey. Whether it’s a romantic dinner, a family gathering, or a casual outing with friends, we promise to make your experience memorable.",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
