import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class ThursdaySeminars extends StatelessWidget {
  var seminarTitles = [
    "Seminars2",
    "DPR Testing",
    "Going Native- Landscaping Sustainably with Native Plants for Birds & Butterflies",
    "pH Management in Irrigation Water",
    "How Much Water Does Your Turf Need?",
    "Regenerative Soil Care",
    "Wireless Irrigation Valve Control & Sensors",
    "Mastering the Art of 12v Landscape Lighting",
    "Seminars2",
    "Telling Your Brand's Story with Social Media",
    "Drip Irrigation Design and Layout - Good Practices",
    "Interdisciplinary Approach to Native Landscape Design & Installation",
    "Identifying and Treating Plant Performance Issues",
    "Trees ... Now You See Them, Now You Don't",
    "Pruning Shade Trees (En Español)",
    "Seminars2",
    "2-Wire Controller Systems (Rain Bird, Outdoor Workshop)",
    "Seminars2",
    "Backflow Application, Maintenance, & Repair",
    "Roots",
    "Why Good Design Matters (UX in Landscape Design)",
    "Soil Amendments and Benefits of Soil Organic Matter",
    "Pruning Shade Trees",
    "Practical Water Management- Skills That Will Make an Impact",
    "Ask the Attorney Workshop (in Center Hall)",
    "Proper Techniques for Solvent Welding ASTM D2855 (AKA Pipe Gluing)"
  ];

  var noImages = [
    "Going Native- Landscaping Sustainably with Native Plants for Birds & Butterflies",
    "How Much Water Does Your Turf Need?",
    "Interdisciplinary Approach to Native Landscape Design & Installation",
    "Pruning Shade Trees (En Español)",
  ];

  var seminarSubtitles = [
    "8:00 AM to 9:30 AM",
    "Cynthia Ray" + "\n" + "Seaside Bottom Ballroom",
    "Reginald Durant" + "\n" + "Room: S-7",
    "Jim Gregory" + "\n" + "Room: S-3",
    "Marco Schiavon Ph.D" + "\n" + "Room: S-1",
    "David White Ph.D" + "\n" + "Room: S-5A",
    "Larry Sarver & Ewan Parker" + "\n" + "Room: S-5B",
    "Bruce Dennis" + "\n" + "Room: S-4B",
    "10:00 AM to 11:30 AM",
    "Robin Plaskoff Horton" + "\n" + "Room: S-5A",
    "Allister Cooney" + "\n" + "Room: S-1",
    "Ann Sever & Katie Brown" + "\n" + "Room: Water Conservation Area",
    "Dane Shota" + "\n" + "Room: S-7",
    "Ann Hope" + "\n" + "Room: S-4B",
    "Oscar Sanchez" + "\n" + "Room: S-5B/Outdoor Demo Area",
    "11:30 AM to 1:30 PM",
    "David Wyche" + "\n" + "Room: Outside Demo Area",
    "1:00 PM to 2:30 PM",
    "Richard Daigle" + "\n" + "Room: S-1",
    "Susan Sims" + "\n" + "Room: S-3",
    "Michael Bernier" + "\n" + "Room: S-4B",
    "Russell Taylor" + "\n" + "Room: S-7",
    "Oscar Sanchez" + "\n" + "Room: S-5B/Tree Trimming",
    "Brandon Burgess" + "\n" + "Room: Water Conservation Area",
    "Milene Apanian" + "\n" + "Room: Product Demo Area in Central Hall",
    "Michael Grabowski" + "\n" + "Room: S-5A/Outside Demo Area"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView.builder(
          itemCount: seminarTitles.length,
          itemBuilder: (c, i) {
            return Container(
              width: double.maxFinite,
              child: Row(
                children: [
                  !hasImage(seminarTitles[i])
                      ? Container(
                          padding: const EdgeInsets.only(left: 7),
                          //color: Colors.green,
                          child: Image.asset(
                              'assets/tle_images/${seminarTitles[i]}.jpg',
                              width: 150,
                              fit: BoxFit.fitHeight,
                              height: 150),
                        )
                      : Container(),
                  Expanded(
                    child: Padding(
                      padding: hasImage(seminarTitles[i])
                          ? EdgeInsets.all(20)
                          : EdgeInsets.all(0),
                      child: ListTile(
                        title: AutoSizeText(seminarTitles[i],
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: AutoSizeText(seminarSubtitles[i],
                            style: TextStyle(color: Colors.black)),
                      ),
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
