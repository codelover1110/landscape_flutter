import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class ExhibitHall extends StatelessWidget {
  const ExhibitHall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset(
                'assets/tle_images/TLE-2017-Exhibitor-Map-new4.jpg',
                height: MediaQuery.of(context).size.height * 0.75,
                fit: BoxFit.fitHeight,
              )
            ],
          )
        ],
      ),
    );
  }
}
