import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class Rainbird2Wire extends StatelessWidget {
  const Rainbird2Wire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Rainbird 2-Wire Controller System', 18,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.maxFinite,
                height: 106,
                constraints: const BoxConstraints(maxWidth: 359),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('assets/tle_images/rainbird seminar.jpg')),
                ),
              ),
              //paddingImage('assets/tle_images/rainbird seminar.jpg', h: 106, hor: 15),
              text('2-Wire Controller Systems\n(Outdoor Workshop)', 14,
                  vertical: 20,
                  textAlign: TextAlign.center,
                  weight: FontWeight.bold,
                  horizontal: 20),
              Image.asset(
                'assets/tle_images/2-Wire Controller Systems (Rain Bird, Outdoor Workshop).jpg',
                width: 175,
                height: 179,
              ),
              text(
                  'Thursday, October 11th: 11:30 AM - 1:00 PM\n\nThis seminar will feature Rain Bird\'s LXD 2-wire controller. Items discussed will be decoder systems in general, design principles, and installation techniques. Additional emphasis is given to surge protection and techniques for troubleshooting on how to detect wire breaks, shorts and earth ground voltage faults with an AC leakage clamp meter.**First 30 people to sign up receive a Free Lunch!**',
                  14,
                  textAlign: TextAlign.center,
                  vertical: 20,
                  horizontal: 40)
            ],
          )
        ],
      ),
    );
  }
}
