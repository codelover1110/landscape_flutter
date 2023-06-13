import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tlevents/colors.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 150),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: h * 0.02),
                  Container(
                    child: const AutoSizeText(
                      'Schedule of Events',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: h * 0.015),
                  Image.asset('assets/logo.png', width: 284, height: 84),
                  SizedBox(height: h * 0.005),
                  textBar(
                      text: 'Monday 11/14/22',
                      color: greenColor,
                      textColor: Colors.white),
                  SizedBox(height: h * 0.008),
                  textBar(text: '8:00 a.m. - 5:00 p.m.', color: yellowColor),
                  SizedBox(height: h * 0.005),
                  textBar(text: 'No Events', color: Colors.white, fontSize: 16),
                  // Second Event
                  SizedBox(height: h * 0.005),
                  textBar(
                      text: 'Tuesday 11/15/22',
                      color: greenColor,
                      textColor: Colors.white),
                  SizedBox(height: h * 0.008),
                  textBar(text: '7:00 a.m. - 12:00 p.m.', color: yellowColor),
                  SizedBox(height: h * 0.005),
                  textBar(
                      text: 'Exhibitor Move In -',
                      color: Colors.white,
                      fontSize: 16),
                  textBar(
                      text: 'Equipment and Large Items',
                      color: Colors.white,
                      fontSize: 16),
                  // Third Event
                  SizedBox(height: h * 0.01),
                  textBar(
                      text: 'Wednesday 09/20/23',
                      color: greenColor,
                      textColor: Colors.white),
                  SizedBox(height: h * 0.008),
                  textBar(text: '7:00 a.m. - 3:45 p.m.', color: yellowColor),
                  SizedBox(height: h * 0.005),
                  textBar(
                      text: 'Online Registration for Seminars',
                      color: Colors.white,
                      fontSize: 16),
                  SizedBox(height: h * 0.008),
                  textBar(text: '8:00 a.m. - 3:00 p.m.', color: yellowColor),
                  SizedBox(height: h * 0.005),
                  textBar(
                      text: 'Registration for Expo Hall - \$20.00',
                      color: Colors.white,
                      fontSize: 16),
                  SizedBox(height: h * 0.008),
                  textBar(text: '9:00 a.m. - 4:00 p.m.', color: yellowColor),
                  SizedBox(height: h * 0.005),
                  textBar(
                      text: 'Exhibit Hall Opens',
                      color: Colors.white,
                      fontSize: 16),
                  SizedBox(height: h * 0.008),
                  textBar(
                      text: '8:00 a.m. - 9:00 a.m.', color: Colors.blue[300]!),
                  SizedBox(height: h * 0.005),
                  textBar(
                      text:
                          'Creating Tree Protection Zones on Construction Sites -',
                      color: Colors.white,
                      fontSize: 15),
                  textBar(
                      text: 'by Erik Diaz', color: Colors.white, fontSize: 15),
                  textBar(text: 'Room: TBA', color: Colors.white, fontSize: 15),
                  SizedBox(height: h * 0.02),
                  textBar(
                      text: 'How to Improve the Survival of Plants -',
                      color: Colors.white,
                      fontSize: 15),
                  textBar(
                      text: 'by Wei Zhang', color: Colors.white, fontSize: 15),
                  textBar(text: 'Room: TBA', color: Colors.white, fontSize: 15),
                  SizedBox(height: h * 0.02),
                  columnedText(),
                  SizedBox(height: h * 0.015),
                  columnsText(color: Colors.blue[300]!, colorTexts: [
                    'Seminars:\n12:00 p.m. 1:00 p.m.',
                  ], simpleTexts: [
                    'Jose Mercado- Aerial Rescue - The TLE Tree Academy -  Room 5',
                    'Richard Daigle - Backflow Testing, Troubleshooting, and Repair -  Room 2',
                    'Mark Pedicone - Commercial Irrigation Communication, Tools, and Gadgets -  Room 6',
                    'Mike Garcia - Creating Pollinator Gardens -  Room 4',
                    'Open Panel Discussion - Dealing with the Drought - LADetails Design/Build Center -  Room 7',
                    'Susan Sims - Dealing with the Drought - Root Development and Care -  Room 2'
                  ]),
                  SizedBox(height: h * 0.015),
                  columnsText(color: lightGreen, colorTexts: [
                    'Demo: \n1:00 p.m.',
                    'Demo: \n1:45 p.m.'
                  ], simpleTexts: [
                    'Electric Equipment Demonstration\nBy Milwaukee Power Tool Company',
                    'Electric Equipment Demonstration\nBy Greenworks'
                  ]),
                  SizedBox(height: h * 0.015),
                  columnsText(color: blueColor!, colorTexts: [
                    'Seminars: 2:00 p.m. 3:00 p.m.'
                  ], simpleTexts: [
                    'Greg Wallace - The Art of Living Walls - LADetails Design/Build Center - Room 7',
                    'Kevin Sims - Common Tree Pests, Observing, Identifying and Management -  Room 4',
                    'Dan Noble - Healthy soil with compost to conserve water & plant heartiness - Room 1',
                    'Janice Gould - How Landscapes can Save our Cities - Sustainability/Irrigation Center - Room 6',
                    'Craig Borland - Hydro Troubleshooting - Room 2',
                    'Brandon Scott Elrod - Topping Trees: Understanding this destructive cultural phenomenon - The TLE Tree Academy - Room 5',
                    'Steven R Allen & Dan Noble - Tying the Pool and Landscape Lighting Together - Room 3'
                  ]),
                  SizedBox(height: h * 0.015),
                  columnsText(colorTexts: [
                    '3:00 p.m.'
                  ], simpleTexts: [
                    'Exhibit Hall Closes',
                  ], fontSize: 11, fontWeight: FontWeight.w900),
                  SizedBox(height: h * 0.015),
                  columnsText(
                      color: Colors.amber[200]!,
                      colorTexts: ['3:00 p.m. to 7:30 p.m.'],
                      simpleTexts: [
                        'Casino Reception at The Sheraton Park Hotels',
                      ],
                      paddingBottom: 13,
                      fontSize: 11,
                      fontWeight: FontWeight.w900),

                  //
                  // Second Heading
                  //
                  SizedBox(height: h * 0.035),
                  textBar(
                      text: 'Thursday 11/17/22',
                      color: greenColor,
                      textColor: Colors.white),
                  SizedBox(height: h * 0.015),
                  columnsText(colorTexts: [
                    '7:00 a.m. - 3:00 p.m.'
                  ], simpleTexts: [
                    'Seminar Registration - Onsite Registration for Seminars',
                  ]),

                  SizedBox(height: h * 0.015),
                  columnsText(color: blueColor!, colorTexts: [
                    'Seminars: 8:00 a.m. 9:00 a.m.'
                  ], simpleTexts: [
                    'Craig Borland &- Dan Noble - Field Wiring Diagnosis - Room 4',
                    'Geoff Gretchenson & Dan Noble - Pest Control: The Safe, Honest, and Legal Use of Pesticides - Room 2',
                    'Dawn Fluharty - Plant Growth Regulators for Drought / Chlorosis / Root Growth & More - Room 3',
                    'Wei Zhang - Soil Moisture: Top factor for the survival of newly planted trees - Room 1'
                  ]),

                  SizedBox(height: h * 0.015),
                  columnsText(colorTexts: [
                    '9:00 a.m. - 3:00 p.m.'
                  ], simpleTexts: [
                    'Exhibit Hall Opens',
                  ]),

                  SizedBox(height: h * 0.015),
                  columnsText(color: blueColor!, colorTexts: [
                    'Seminars: 10:00 a.m. 11:00 a.m.'
                  ], simpleTexts: [
                    'Richard Daigle - Backflow Testing, Troubleshooting, and Repair - Room 3',
                    'Joseph Gallegos - Greywater Irrigation - Room 1',
                    'Donald Merhaut - Managing Landscapes During Heat Waves - Room 6',
                    'Jose Mercado - Safety While Aloft - The TLE Tree Academy - Room 5',
                    'Ted Drechsel - The Art of Fire Features in Design - Room 1',
                    'Raul Rodriguez - Setting Up a Successful Landscape Business for the Long Term - Room 3'
                  ]),

                  SizedBox(height: h * 0.015),
                  columnedText2(),
                  columnsText(
                      color: blueColor!,
                      colorTexts: ['Seminars: 12:00 p.m. 1:00 p.m.'],
                      simpleTexts: [
                        'Jose Mercado - Aerial Rescue - The TLE Tree Academy - Room 5',
                        'Milene Apanian - Construction Contracts - Room 1',
                        'Dan Mabe - Electric Equipment - Green Zone Certification - Room 3',
                        'Adam Carr - Best Practices in Response to DroughtBest Practices in Response to Drought - Room 6',
                        'Kathryn Toth - Landscape Lighting Composition & Recommended Practices - Room 7',
                        'Kathy Kellogg-Johnson - Looking to Install the Best Performing and Healthiest Landscape - Room 4',
                        'Brandon Scott Elrod - Trees as Major Design Features: How to experience the greatest success in your design - Room 2'
                      ],
                      paddingBottom: 4),
                  columnsText(
                      color: lightGreen,
                      colorTexts: ['Demo:\n1:00 p.m.', 'Demo:\n1:45 p.m.'],
                      simpleTexts: [
                        'Electric Equipment Demonstration\nBy Milwaukee Power Tool Company',
                        'Electric Equipment Demonstration\nBy Milwaukee Power Tool Company',
                      ],
                      paddingBottom: 4),
                  columnsText(
                      color: blueColor!,
                      colorTexts: ['Seminars: 1:30 p.m. 2:30 p.m.'],
                      simpleTexts: [
                        'Douglas Kent - Firescaping: Creating Fire Protected Properties - LADetails Design/Build Center - Room 7',
                        'Marcus Coulombe - Compost Benefits and Uses - Room 3',
                        'Michael Bernier - Think Like A Client; Design Like A Pro Seminar - Room 4',
                        'Milene Apanian - Getting Paid - Room 2',
                        'Tim Becker - Irrigation techniques for CA native plants - Room 6',
                        'Beatriz E Nobua Behrmann - Management of Tree Pests in SoCal - Room 5'
                      ],
                      paddingBottom: 4),

                  SizedBox(height: h * 0.015),
                  columnsText(colorTexts: [
                    '3:00 p.m.'
                  ], simpleTexts: [
                    'Exhibitor Move Out',
                  ], fontSize: 11, fontWeight: FontWeight.w800),
                  // Column End
                ]),
          ),
        ),
      ),
    );
  }

  alignedText() {
    return Column(
      children: [
        alignedColorTextRow(),
        alignedColorTextRow(),
      ],
    );
  }

  alignedColorTextRow() {
    return Container(
      padding: EdgeInsets.zero,
      child: Row(
        children: [
          Container(
            width: 80,
            color: lightGreen,
            child: colorText(''),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Sustainability/Irrigation Demonstration'),
                    simpleText(
                        'Subterranean Irrigation - By Responsive Drip Irrigation'),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  columnedText() {
    return Container(
      child: Row(
        children: [
          Container(
            width: 80,
            color: lightGreen,
            child: Column(
              children: [
                colorText('Demo:\n10:00 a.m.'),
                colorText('Demo:\n10:00 a.m.'),
                colorText('Demo:\n10:45 a.m.'),
                colorText('Demo:\n11:30 a.m.'),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Sustainability/Irrigation Demonstration'),
                    simpleText(
                        'Subterranean Irrigation - By Responsive Drip Irrigation'),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Electric Equipment Demonstration'),
                    simpleText('By Milwaukee Power Tool Company'),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Electric Equipment Demonstration'),
                    simpleText('By Greenworks'),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Electric Equipment Demonstration'),
                    simpleText('By B & M Lawn and Garden'),
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }

  columnedText2() {
    return Container(
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5),
            width: 80,
            color: lightGreen,
            child: Column(
              children: [
                colorText('Demo:\n10:00 a.m.'),
                colorText('Demo:\n10:00 a.m.'),
                colorText('Demo:\n10:45 a.m.'),
                colorText('Demo:\n10:45 a.m.'),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Sustainability/Irrigation Demonstration'),
                    simpleTextNormal(
                        'Subterranean Irrigation - By Responsive Drip Irrigation'),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Electric Equipment Demonstration'),
                    simpleTextNormal('By Milwaukee Power Tool Company'),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Electric Equipment Demonstration'),
                    simpleTextNormal('By B & M Lawn and Garden'),
                  ],
                ),
                SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    simpleText('Electric Equipment Demonstration'),
                    simpleTextNormal('By Greenworks'),
                  ],
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }

  columnsText(
      {Color color = Colors.white,
      List<String> colorTexts = const [],
      List<String> simpleTexts = const [],
      double paddingBottom = 0,
      FontWeight fontWeight = FontWeight.w600,
      double fontSize = 10}) {
    return Container(
        color: color,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    colorTexts.map((t) => colorText2(t) as Widget).toList(),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 12, bottom: paddingBottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: simpleTexts
                    .map((t) => simpleText2(t,
                        fontSize: fontSize, fontWeight: fontWeight) as Widget)
                    .toList(),
              ),
            ))
          ],
        ));
  }

  columnsTextBold(
      {Color color = Colors.white,
      List<String> colorTexts = const [],
      List<String> simpleTexts = const [],
      double paddingBottom = 0}) {
    return Container(
        color: color,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.zero,
              width: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                    colorTexts.map((t) => colorText2(t) as Widget).toList(),
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(left: 12, bottom: paddingBottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: simpleTexts
                    .map((t) => simpleTextBold(t) as Widget)
                    .toList(),
              ),
            ))
          ],
        ));
  }

  colorText(String text) {
    return Container(
        padding: const EdgeInsets.all(5),
        child: AutoSizeText(text,
            minFontSize: 10,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600)));
  }

  colorText2(String text) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: AutoSizeText(text,
            minFontSize: 10,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600)));
  }

  simpleText(String text) {
    return Container(
        padding: const EdgeInsets.all(0),
        child: AutoSizeText(text,
            minFontSize: 10,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600)));
  }

  simpleTextNormal(String text) {
    return Container(
        padding: const EdgeInsets.all(0),
        child: AutoSizeText(text,
            minFontSize: 10, style: const TextStyle(fontSize: 10)));
  }

  simpleText2(String text,
      {FontWeight fontWeight = FontWeight.w600, double fontSize = 10}) {
    return Container(
        padding: const EdgeInsets.only(bottom: 4, top: 4),
        child: AutoSizeText(text,
            minFontSize: 10,
            style: TextStyle(fontSize: fontSize, fontWeight: fontWeight)));
  }

  simpleTextBold(String text) {
    return Container(
        padding: const EdgeInsets.only(bottom: 4, top: 4),
        child: AutoSizeText(text,
            minFontSize: 8,
            style: const TextStyle(fontSize: 11, fontWeight: FontWeight.bold)));
  }

  textBar(
      {String text = '',
      Color color = Colors.green,
      Color textColor = Colors.black,
      double fontSize = 17}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      width: double.maxFinite,
      color: color,
      child: AutoSizeText(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: fontSize, fontWeight: FontWeight.w600, color: textColor),
      ),
    );
  }
}
