import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class IPExhibitors extends StatelessWidget {
  var exhibitorsTitle = [
    "Imperial Sprinkler",
    "Integrated Crop Capture",
    "Intelligro - Civitas Lawn",
    "Irrometer Company",
    "IV Organic",
    "James G. Parker Insurance Associates",
    "JCB of Southern CA",
    "K-Rain Manufacturing",
    "KBD Nursery",
    "Kurapia Inc",
    "L.A. Steelcraft",
    "Landscape Management Network",
    "Landscape Contractors Insurance Services - LCIS",
    "Lightcraft Outdoor",
    "Live Earth Products",
    "Lumiere Landscape Lighting",
    "Mauget Company",
    "Maxijet",
    "MCC USA Inc",
    "Metropolitan Water District",
    "Milfelds' Nursery",
    "MOD Fountain",
    "Moon Valley Nursery - GroWest Nursery",
    "Mountain States Wholesale Nursery",
    "Mulch Master",
    "Municipal Maintenance Equipment",
    "Netafim USA",
    "Newlite",
    "O'Connor Sales, Inc",
    "OreGro Seeds",
    "Otto & Sons Nursery",
    "Outdoor Fire Concepts",
    "Pacific Interlocks",
    "Pacific Sod",
    "Paradise Chevrolet Cadillac",
    "PDQ Rentals",
    "Performance Nursery, Inc",
    "PAPA",
    "Pottery Manufacturing & Distribution, Inc",
    "Premium Nursery Inc",
    "Prime Line",
    "Purchase Green"
  ];

  var exhibitorsSubtitle = [
    "Booth # 1109",
    "Booth # 227",
    "Booth # 1233",
    "Booth # 1343",
    "Booth # 224",
    "Booth # 228",
    "Booth # 1201",
    "Booth # 1021",
    "Booth # 937",
    "Booth # 234",
    "Booth # 1419",
    "Booth # 434",
    "Booth # 500",
    "Booth # 340",
    "Booth # 119",
    "Booth # 1450",
    "Booth # 443",
    "Booth # 516",
    "Booth # 125",
    "Booth # 1453",
    "Booth # 218",
    "Booth # 1422",
    "Booth # 1317",
    "Booth # 1217",
    "Booth # 455",
    "Booth # 137",
    "Booth # 1125",
    "Booth # 514",
    "Booth # 1151",
    "Booth # 1407",
    "Booth # 1048",
    "Booth # 1323",
    "Booth # 336",
    "Booth # 524",
    "Booth # 244",
    "Booth # 825",
    "Booth # 528",
    "Booth # 508",
    "Booth # 1037",
    "Booth # 1409",
    "Booth # 1242",
    "Booth # 436"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView.builder(
          itemCount: exhibitorsTitle.length,
          itemBuilder: (c, i) {
            return Container(
              width: double.maxFinite,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 7),
                    //color: Colors.green,
                    child: Image.asset(
                        'assets/tle_images/${exhibitorsTitle[i]}.jpg',
                        width: 110,
                        fit: BoxFit.fitHeight,
                        height: 90),
                  ),
                  Expanded(
                    child: ListTile(
                      title: AutoSizeText(exhibitorsTitle[i],
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      subtitle: AutoSizeText(exhibitorsSubtitle[i],
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
