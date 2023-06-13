import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class OfficialDpr extends StatelessWidget {
  const OfficialDpr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Official DPR Test Site', 17,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              maxWidthImage('assets/tle_images/dpr class.jpg', 346, 146),
              Image.asset(
                'assets/tle_images/DPR Testing.jpg',
                width: 264,
                height: 111,
              ),
              text(
                  'The Landscape Expo (TLE), a two-day regional landscape conference and trade show to be held at the Long Beach Convention Center on Wednesday, October 10th and Thursday, October 11th will host an official DPR Test Site.\n\nAttendees can register for any of DPR\'s license or certificate exams through the California Department of Pesticide Regulation website. Those interested must register in advance through DPR; note that they will not be able to accommodate walk-ins.',
                  14,
                  textAlign: TextAlign.center,
                  vertical: 0,
                  horizontal: 40),
              const SizedBox(height: 80),
            ],
          )
        ],
      ),
    );
  }
}
