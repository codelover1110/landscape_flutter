import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class BocceTournaments extends StatelessWidget {
  const BocceTournaments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Bocce Tournaments in the Design Center', 17,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              maxWidthImage(
                  'assets/tle_images/Earth Wind and Rock bocce.jpg', 339, 204),
              GestureDetector(
                onTap: () {
                  launchURL('http://www.earthstonerock.com/Default.asp');
                },
                child: Image.asset(
                  'assets/tle_images/Earth Wind and Rock.jpg',
                  width: 211,
                  height: 123,
                ),
              ),
              text(
                  'Earth Wind and Rock is building a full size Bocce game in the Design Center and TLE is offering \$100.00 to the winner of each of four separate tournaments.\n\nWednesday & Thursday at 10:30 & 1:30. \n\nTo sign up or for more information call 714-979-5276 x143 or email mboyer@landscapeonline.com',
                  14,
                  textAlign: TextAlign.center,
                  vertical: 0,
                  horizontal: 40),
              const SizedBox(height: 30),
              maxWidthImage(
                  'assets/tle_images/Earth Wind and Rock bocce2.jpg', 339, 204),
              const SizedBox(height: 80),
            ],
          )
        ],
      ),
    );
  }
}
