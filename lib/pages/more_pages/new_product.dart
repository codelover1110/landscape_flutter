import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class NewProduct extends StatelessWidget {
  const NewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                text('New Product Demo Area', 20,
                    weight: FontWeight.bold, top: 10),
                text('IN THE CENTER HALL', 17,
                    weight: FontWeight.bold, bottom: 0),
                text(
                  "A crowd favorite for over a decade, there is a new twist to the New Product Showcase at TLE...\n\nIn addition to vendors providing new products for you to examine and explore, select vendors will be presenting complete product demonstrations and hands-on training for the latest and greatest new products in the landscape industry!",
                  14,
                  vertical: 8,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 3),
                          Image.asset('assets/tle_images/flowmec2.jpg',
                              width: 156, height: 67),
                          Image.asset(
                              'assets/tle_images/flomec-flow-sensor.jpg',
                              width: 179,
                              height: 128),
                          const SizedBox(height: 8),
                          imageButton('Visit Site', width: 100, height: 22,
                              onPressed: () {
                            launchURL('http://flomec.net');
                          }),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: text(
                          'Great Plains will be showcasing their QS200 Insertion Ultrasonic Flowmeter. The QS200 Insertion Ultrasonic Flowmeter provides an accurate reading of liquid flow rate and accumulated flow. Designed to support commercial irrigation applications, the QS200 is available in five pipe sizes, 1 to 4 inch.',
                          14,
                          top: 8,
                          textAlign: TextAlign.center),
                    )
                  ],
                ),
                drawLine(3, Colors.black, vert: 10),
                const SizedBox(height: 10),
                Image.asset('assets/tle_images/spiio2.jpg',
                    width: 181, height: 105),
                const SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 3),
                          Image.asset(
                              'assets/tle_images/spillio-wireless-sensor.jpg',
                              width: 151,
                              height: 128),
                          const SizedBox(height: 30),
                          imageButton('Visit Site', width: 100, height: 22,
                              onPressed: () {
                            launchURL('https://spiio.com');
                          }),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: text(
                          'Spiio will be demonstrating the use and installation and use of their S-110 Wireless Moisture Sensor which they claim is built to last both outdoor and indoor for up to 9 years. The device contains the most necessary sensors, so you can stay on top of your plant projects\' performance.',
                          14,
                          top: 0,
                          textAlign: TextAlign.center),
                    )
                  ],
                ),
                drawLine(3, Colors.black, hor: 40, vert: 15),
                Image.asset(
                  'assets/tle_images/GV Haulit.jpg',
                  width: 111,
                  height: 71,
                ),
                Image.asset(
                  'assets/tle_images/GV Haulit workhorse.jpg',
                  width: 186,
                  height: 106,
                ),
                text(
                    "GV HaulIt will be live demo'ing their HaulIt workhorse delivery trailer described as a \"Beefy Built\" tilt deck trailer invented to haul and unload palleted and supersack materials, without a forklift.",
                    13,
                    vertical: 10,
                    horizontal: 40),
                imageButton('Visit Site', width: 100, height: 22,
                    onPressed: () {
                  launchURL(
                      'https://www.greenvalleyearth.com/haulit-delivery-system');
                }),
                SizedBox(height: 80),
              ],
            ),
          )
        ],
      ),
    );
  }
}
