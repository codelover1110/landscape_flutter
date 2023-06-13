import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class WednesdaySeminars extends StatelessWidget {
  var seminarTitles = [
    "Seminars1",
    "Weed Management",
    "Crazy Plant Cool The Plant Journey Continues",
    "Irrigation Flow Sensing and Management",
    "Managing Gophers and Ground Squirrels",
    "Seminars1",
    "Bloom your Business with Native Plants - How Design Trends and Drought are Driving Customers",
    "Electric Equipment Conversion at USC",
    "Heat, drought, and pest resistant landscape trees for Southern CA",
    "Warm Season Lawns - The Right Choice for Southern California",
    "Safety While Aloft",
    "The Art of Fire Features in Design",
    "Setting Up a Successful Landscape Business for the Long Term",
    "Seminars1",
    "Aerial Rescue",
    "Backflow Testing, Troubleshooting, and Repair",
    "Commercial Irrigation Communication, Tools, and Gadgets",
    "Without a Targeted Strategic Plan & Business Model to Execute ... You're Doomed!",
    "Plants for Edible Landscapes",
    "Master Valves Application, Maintenance, & Repair",
    "Proper Climbing Techniques, Rope and Saddle, Aerial Lift Safety",
    "Maintenance and Landscaping at the Los Alamitos Race Course",
    "Seminars1",
    "Erosion Control Landscapes – Installation, Inspections & Maintenance",
    "How to Have a Lawn and Save Water, Too...It's Not Rocket Science!",
    "Wire Tracking and Electrical Troubleshooting",
    "Bidding & Project Design"
  ];

  var noImages = [
    "Bloom your Business with Native Plants - How Design Trends and Drought are Driving Customers",
    "Without a Targeted Strategic Plan & Business Model to Execute ... You're Doomed!",
    "Erosion Control Landscapes – Installation, Inspections & Maintenance",
  ];

  var seminarSubtitles = [
    "8:00 AM to 9:00 AM",
    "Jim Baird" + "\n" + "Room: 7",
    "Nicholas Staddon" + "\n" + "Room: 3",
    "Doug Callison" + "\n" + "Sustainability/Irrigation Center - Room: 6",
    "Niamh Quinn" + "\n" + "Room: 1",
    "10:00 AM to 11:00 AM",
    "Ann-Marie Benz" + "\n" + "Room: 7",
    "Erik Diaz" + "\n" + "Sustainability/Irrigation Center - Room: 6",
    "Janet Hartin" + "\n" + "Room: 4",
    "Pawel Orlinski" + "\n" + "Room: 2",
    "Jose Mercado" + "\n" + "The TLE Tree Academy - Room: 5",
    "Ted Drechsel" + "\n" + "Room: 1",
    "Raul Rodriguez" + "\n" + "Room: 3",
    "12:00 PM to 1:00 PM",
    "Jose Mercado" + "\n" + "The TLE Tree Academy - Room: 5",
    "Richard Daigle" + "\n" + "Room: 2",
    "Mark Pedicone" +
        "\n" +
        "Sustainability/Irrigation Center - Seminar Room: 6",
    "Judith Guido" + "\n" + "Room: S-3",
    "Jacqueline Soule Ph.D.Y" + "\n" + "Room: S-5B",
    "Richard Daigle" + "\n" + "Room: S-7",
    "Jose Mercado" + "\n" + "Room: Outdoor Demo Area",
    "Frank Sherren" + "\n" + "Room: S-5A",
    "3:00 PM to 4:30 PM",
    "Panel Discussion" + "\n" + "Room: S-3",
    "Jim Baird Ph.D" + "\n" + "Room: S-4B",
    "Richard Daigle" + "\n" + "Room: S-7",
    "Steve Allen" + "\n" + "Room: S-1"
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
