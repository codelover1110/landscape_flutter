import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class LiveEquipScreen extends StatelessWidget {
  const LiveEquipScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Live Equipment Demo Area', 19,
                  weight: FontWeight.bold, vertical: 10),
              text('Outside the Center Hall', 15,
                  weight: FontWeight.bold, bottom: 10),
              text('Wed. 9 to 3:00 PM / Thur. 9 to 1:00 PM', 15,
                  weight: FontWeight.bold),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              Image.asset(
                'assets/tle_images/jcb2.jpg',
                width: 174,
                height: 56,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.001),
              Image.asset(
                'assets/tle_images/JCB 155 Teleskid.jpg',
                width: 186,
                height: 165,
              ),
              text(
                  'JCB will feature their JCB 155 Teleskid. It is the smallest radial lift within the JCB skid steer loader line. It has a 42kW JCB Diesel by Kohler engine with enough power to perform at any job site.',
                  13,
                  vertical: 10,
                  horizontal: 40),
              imageButton('Visit Site', onPressed: () {
                launchURL('https://yalechasejcb.com');
              }),
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
              imageButton('Visit Site', onPressed: () {
                launchURL('http://www.gvhaulit.com');
              }),
              drawLine(3, Colors.black, hor: 40, vert: 15),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      'assets/tle_images/Diamond A Equipment2.jpg',
                      width: 111,
                      height: 71,
                    ),
                    Image.asset(
                      'assets/tle_images/Kubota Tractor Corporation.jpg',
                      width: 111,
                      height: 71,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Image.asset(
                'assets/tle_images/diamond demo.jpg',
                width: 186,
                height: 106,
              ),
              text(
                  'Diamond A Equipment, Kubota will be exhibiting the Kubota BX23S Tractor diesel tractor, which has the versatility to do any job in your yard or on your property. Click Here to learn more.They will also have a WGC6-21 Walk-Behind Mower to test out.',
                  13,
                  vertical: 10,
                  horizontal: 40),
              imageButton('Visit Site', onPressed: () {
                launchURL('http://www.diamondaequipment.com');
              }),
              const SizedBox(height: 100)
            ],
          ),
        ],
      ),
    );
  }
}
