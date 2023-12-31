import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class QZExhibitors extends StatelessWidget {
  var exhibitorsTitle = [
    "QDISurfaces",
    "Rain Bird",
    "Rainbow Treecare Scientific Advancements",
    "Rancho Soledad Nurseries",
    "RDO-Vermeer",
    "Renewal by Andersen",
    "Reynolds Fleet Sales & Service",
    "Royal Building Products",
    "R.P.W Services Inc",
    "Rush Truck Center",
    "RWP Landscape Materials",
    "Safeway Instant Printing",
    "Senna Tree Company",
    "Senninger Irrigation",
    "ShelterWorks Ltd",
    "Sims Tree health Specialist Inc",
    "SingleOps",
    "Site One",
    "Smith Pipe & Supply",
    "SoCal Mulch, Inc",
    "Southland Sod Farms",
    "Southwest Aquatics, LLC",
    "Southwest Boulder Stone",
    "Southwest Greens",
    "Spiio",
    "Sports Turf Innovations",
    "Stotz Equipment",
    "Stover Seed Company",
    "Street Tree Seminar",
    "Sun Turf Inc",
    "Suncrest Nurseries Inc",
    "Sunrise Nursery",
    "SWG Olive Trees",
    "T Christy Enterprises, Inc",
    "Target Specialty Products",
    "Taylor Dunn",
    "TechniSoil",
    "ThingsGreen",
    "The Toro Company",
    "TOR Insurance Services - Landscapers Advantage Insurance Services",
    "TrailerRacks.com",
    "Trendy Surfaces",
    "Trinity Equipment Rentals",
    "Tri-C Organics",
    "TrueLine",
    "Tucor Inc",
    "Turf Star",
    "Tuttle-Click Dodge",
    "Underhill International",
    "Univar USA, Inc",
    "UC Riverside Extension",
    "Vista Professional Outdoor Lighting",
    "Waterbearing",
    "Waypoint Analytical",
    "West Coast Turf",
    "Western Chapter ISA WCISA",
    "Wilbur-Ellis",
    "Zenport Industries"
  ];

  var exhibitorsSubtitle = [
    "Booth # 141",
    "Booth # 1101",
    "Booth # 142",
    "Booth # 1316",
    "Booth # 132",
    "Booth # 327",
    "Booth # 809",
    "Booth # 837",
    "Booth # 325",
    "Booth # 1309",
    "Booth # 1237",
    "Booth # 1411",
    "Booth # 801",
    "Booth # 1019",
    "Booth # 338",
    "Booth # 1057",
    "Booth # 1251",
    "Booth # 1327",
    "Booth # 1131",
    "Booth # 1348",
    "Booth # 936",
    "Booth # 129",
    "Booth # 330",
    "Booth # 1435",
    "Booth # 328",
    "Booth # 1444",
    "Booth # 100",
    "Booth # 504",
    "Booth # 1338",
    "Booth # 1445",
    "Booth # 510",
    "Booth # 459",
    "Booth # 1421",
    "Booth # 817",
    "Booth # 1137",
    "Booth # 1209",
    "Booth # 326",
    "Booth # 144",
    "Booth # 219",
    "Booth # 337",
    "Booth # 1015",
    "Booth # 229",
    "Booth # 1163",
    "Booth # 1336",
    "Booth # 1328",
    "Booth # 1227",
    "Booth # 200",
    "Booth # 460",
    "Booth # 1345",
    "Booth # 447",
    "Booth # 1440",
    "Booth # 1225",
    "Booth # 1326",
    "Booth # 518",
    "Booth # 925",
    "Booth # 1239",
    "Booth # 131",
    "Booth # 1240"
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
