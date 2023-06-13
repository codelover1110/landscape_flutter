import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class NetafimPractial extends StatelessWidget {
  const NetafimPractial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Netafim Practical Drip Irrigation', 18,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  paddingImage('assets/tle_images/drip1.jpg', w: 175, h: 106),
                  const SizedBox(width: 8),
                  paddingImage('assets/tle_images/drip2.jpg', w: 175, h: 106),
                ],
              ),
              text(
                  'Practical Outdoor Demonstration on\nDrip Irrigation (Outdoor Workshop)',
                  14,
                  vertical: 20,
                  textAlign: TextAlign.center,
                  weight: FontWeight.bold,
                  horizontal: 20),
              Container(
                width: 150,
                height: 150,
              ),
              text(
                  'Wednesday, October 10th: 10:00 AM - 11:30 AM\n\nObjectives: Practical tips on best installation practices, learn about installation methods from trenching to excavating, lay out dripline the most efficient way possible to get it done right but avoid problems such as running out of pressure, learn about different types of flush valves and how to place them, when and where to use air/relief valves and why they can be important, estimate materials from control kit to dripline to fittings and accessories and practical maintenance tips; flushing, cleaning, winterizing.',
                  14,
                  textAlign: TextAlign.center,
                  horizontal: 40)
            ],
          )
        ],
      ),
    );
  }
}
