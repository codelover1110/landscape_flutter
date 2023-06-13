import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class AHExhibitors extends StatefulWidget {
  const AHExhibitors({super.key});

  @override
  State<AHExhibitors> createState() => _AHExhibitorsState();
}

class _AHExhibitorsState extends State<AHExhibitors> {
  var exhibitorsTitle = [
    "191 Above",
    "A-G Sod Farms",
    "Advanced Display Systems",
    "Advanced Drainage Systems",
    "AEI Corporation",
    "Affordable Turf & Specialty Tire",
    "Agri-Turf Distributors",
    "Agricultural Pest Control",
    "Agriserve Pest Control, Inc",
    "Aivaka",
    "All-Pro Association",
    "Altec",
    "American Sod Farms",
    "ANC Technology",
    "Antelco Corporation",
    "AquaSmart",
    "Aquatrols",
    "Arborjet",
    "Artisan Aquatics Inc.",
    "Asian Ceramics",
    "Association of Compost Producers",
    "Avant Tecno, USA",
    "Azpects Easy Joint",
    "B & M Lawn and Garden",
    "Back to Natives Restoration",
    "Barenbrug USA",
    "Black Oak Foundry",
    "Bowsmith, Inc",
    "Buckner Superior",
    "California State License Board",
    "Caltrans",
    "California State Polytechnic University Pomona",
    "California Time and Labor Company",
    "Cantrell Turf Equipment",
    "Century Products",
    "Chapin",
    "Certified Inspector Sediment and Erosion Control",
    "CLASS Fund Calif",
    "Coastline Equipment",
    "Corona Lighting",
    "Courtesy Chevrolet San Diego",
    "CR&R Incorporated",
    "Creative Sales, Inc",
    "Delco Sales",
    "Delta Bluegrass Company",
    "Diamond A Equipment",
    "Dig Corporation",
    "Direct Edge",
    "Direct Lighting Outdoor Lifestyles",
    "Ditch Witch",
    "DLT Growers",
    "Dura Plastic Products",
    "Duramax Building Products - US Polymers Inc",
    "Eagle Spec Sales Group",
    "EcoFert Inc",
    "Ecoturf Midwest Inc",
    "Oak Landscape Lighting by Elram, Inc",
    "Ewing Irrigation Products",
    "ExakTime",
    "EZ-FLO Fertilizing Systems",
    "First Step Greenhouses, Inc",
    "FLOMEC:Great Plains Industries",
    "Florasource LTD",
    "Focus Industries",
    "Gail Materials",
    "Garden Light LED",
    "GPS Insight",
    "Green Industry",
    "Green Product Sales",
    "Green's Best",
    "Griswold Controls",
    "Gro-Power Inc",
    "Guardian Enclosures",
    "Gustin Ranch Nursery",
    "GV Haulit",
    "Hanson Palms",
    "Hendrickson Bros",
    "HIT Products Corporation",
    "Homeowners Marketing",
    "Hunter Industries",
    "Husqvarna",
    "Hydro Rain"
  ];

  var exhibitorsSubtitle = [
    "Booth # 127",
    "Booth # 1249",
    "Booth # 231",
    "Booth # 239",
    "Booth # 526",
    "Booth # 1238",
    "Booth # 1043",
    "Booth # 430",
    "Booth # 1139",
    "Booth # 335",
    "Booth # 1455",
    "Booth # 917",
    "Booth # 138",
    "Booth # 1229",
    "Booth # 520",
    "Booth # 439",
    "Booth # 1438",
    "Booth # 1244",
    "Booth # 440",
    "Booth # 1223",
    "Booth # 1050",
    "Booth # 118B",
    "Booth # 331",
    "Booth # 412, 418, 425, 433",
    "Booth # 1449",
    "Booth # 1121",
    "Booth # 1430",
    "Booth # 1041",
    "Booth # 1143",
    "Booth # 226",
    "Booth # 1220",
    "Booth # 1442",
    "Booth # 1344",
    "Booth # 312",
    "Booth # 1213",
    "Booth # 1140",
    "Booth # 1413",
    "Booth # 1324",
    "Booth # 1001",
    "Booth # 1119",
    "Booth # 1028",
    "Booth # 1052",
    "Booth # 457",
    "Booth # 1138",
    "Booth # 237",
    "Booth # 831",
    "Booth # 1341",
    "Booth # 118A",
    "Booth # 1141",
    "Booth # 1049",
    "Booth # 1144",
    "Booth # 225",
    "Booth # 1330",
    "Booth # 1118",
    "Booth # 135",
    "Booth # 445",
    "Booth # 1025",
    "Booth # 1127",
    "Booth # 1245",
    "Booth # 1231",
    "Booth # 1417",
    "Booth # 1053",
    "Booth # 1333",
    "Booth # 1114",
    "Booth # 1149",
    "Booth # 1039",
    "Booth # 428",
    "Booth # 700",
    "Booth # 1415",
    "Booth # 329",
    "Booth # 502",
    "Booth # 235",
    "Booth # 1339",
    "Booth # 1332",
    "Booth # 236",
    "Booth # 339",
    "Booth # 1312",
    "Booth # 522",
    "Booth # 424",
    "Booth # 1009",
    "Booth # 419",
    "Booth # 1349"
  ];

  var noImages = [
    "FLOMEC:Great Plains Industries",
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
                  !hasImage(exhibitorsTitle[i])
                      ? Container(
                          padding: EdgeInsets.only(left: 7),
                          //color: Colors.green,
                          child: Image.asset(
                              'assets/tle_images/${exhibitorsTitle[i]}.jpg',
                              width: 110,
                              fit: BoxFit.fitHeight,
                              height: 90),
                        )
                      : Container(),
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

  hasImage(String image) {
    return noImages.contains(image);
  }
}
