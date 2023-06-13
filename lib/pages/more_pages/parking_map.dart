import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class ParkingMap extends StatelessWidget {
  const ParkingMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Image.asset(
            'assets/tle_images/TLE-2018-parking-Map.jpg',
            fit: BoxFit.fitWidth,
          )
        ],
      ),
    );
  }
}
