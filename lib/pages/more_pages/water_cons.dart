import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class WaterConservation extends StatelessWidget {
  final List<Item> items = [
    Item(
        image: 'assets/tle_images/Flow Meter Selection.jpg',
        title: 'Flow Meter Selection',
        subtitle:
            'by Kevin C. Symens, MBM, CEM\nWednesday,\nOctober 10th 10:00 - 11:30 AM\nCEUs: IA, NALP, PGMS, QWEL'),
    Item(
        image:
            'assets/tle_images/Water Efficient Landscapes – Why They Matter.jpg',
        title: 'Water Efficient Landscapes – Why They Matter',
        subtitle:
            'by Marianne Simon\nWednesday\nOctober 10th 1:00 - 2:30 PM\nCEUs: APLD, IA, NALP, PGMS, QWEL'),
    Item(
        image: 'assets/tle_images/no_image.jpg',
        title:
            'Interdisciplinary Approach to Native Landscape Design & Installation',
        subtitle:
            'by Ann Sever, PLA, LEED AP, CLIA and Katie Brown\nThursday\nOctober 11th 10:00 - 11:30 AM\nEUs: APLD, IA, ISA, NALP, PGMS, QWEL'),
    Item(
        image:
            'assets/tle_images/Practical Water Management- Skills That Will Make an Impact.jpg',
        title: 'Practical Water Management- Skills That Will Make an Impact',
        subtitle:
            'by Brandon Burgess\nThursday\nOctober 11th 1:00 - 2:30 PM\nCEUs: APLD, IA, NALP, PGMS, QWEL'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Water Conservation Center', 19,
                  weight: FontWeight.bold, top: 20, bottom: 5),
              paddingImage('assets/tle_images/water conservation image.jpg',
                  w: 243, h: 91),
              text(
                  'California\'s largest concern is water, and any means with which we can save it. Join these industry leading educators & state-of-the-art vendors in the TLE Water Conservation Center. Explore the Water Conservation Center, featuring Four on-point seminars and surrounded by the latest technology in conserving California\'s most precious resource.',
                  14,
                  horizontal: 30,
                  vertical: 20),
              const SizedBox(height: 10),
              ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (c, i) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 100),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 7),
                            //color: Colors.green,
                            child: Image.asset(items[i].image,
                                width: 111, fit: BoxFit.fitHeight, height: 111),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0),
                              child: ListTile(
                                contentPadding: const EdgeInsets.only(left: 10),
                                title: Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: AutoSizeText(items[i].title,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                                subtitle: AutoSizeText(items[i].subtitle,
                                    style:
                                        const TextStyle(color: Colors.black)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              const SizedBox(height: 10)
            ],
          )
        ],
      ),
    );
  }
}

class Item {
  final String image;
  final String title;
  final String subtitle;

  Item({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}
