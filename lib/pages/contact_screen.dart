import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar(title: Text('Contact')),
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Image.asset(
            'assets/logo.png',
            width: 274,
            height: 84,
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text('Sponsors', 17,
                        weight: FontWeight.w600, horizontal: 15),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=13610");
                      },
                      child: paddingImage('assets/tle_images/v-ewing.jpg',
                          w: 124, h: 53, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=40595");
                      },
                      child: paddingImage('assets/tle_images/v-jcb.jpg',
                          w: 116, h: 24, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=12286");
                      },
                      child: paddingImage(
                          'assets/tle_images/HansonPalmsLogo.jpg',
                          w: 116,
                          h: 24,
                          vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=14829");
                      },
                      child: paddingImage('assets/tle_images/v-moonvalley.jpg',
                          w: 113, h: 55, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=40427");
                      },
                      child: paddingImage(
                          'assets/tle_images/v-mountain-states.jpg',
                          w: 114,
                          h: 74,
                          vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=17339");
                      },
                      child: paddingImage('assets/tle_images/v-performance.jpg',
                          w: 119, h: 58, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=17339");
                      },
                      child: paddingImage('assets/tle_images/v-bandm.jpg',
                          w: 112, h: 62, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=17339");
                      },
                      child: paddingImage('assets/tle_images/v-suncrest.jpg',
                          w: 111, h: 49, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=17339");
                      },
                      child: paddingImage('assets/tle_images/v-haaweb.jpg',
                          w: 94, h: 89, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://www.landscapeonline.com/template-prod-a.php?number=17339");
                      },
                      child: paddingImage('assets/tle_images/v-wcisa.jpg',
                          w: 98, h: 78, vert: 10),
                    ),
                    GestureDetector(
                      onTap: () {
                        launchURL(
                            "http://landscapeonline.com/mobile-index-2.php");
                      },
                      child: paddingImage(
                          'assets/tle_images/2017-LCDBM-logo.jpg',
                          w: 116,
                          h: 28,
                          vert: 10),
                    ),
                    SizedBox(height: 100)
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        text('Keep up to Date', 17, weight: FontWeight.bold),
                        text('use the news tab', 16),
                        text('Save \$20.00', 20,
                            weight: FontWeight.bold, color: Colors.red, top: 7),
                        text('Pre-Register', 16),
                        text('Expo Contacts', 17,
                            weight: FontWeight.w600, vertical: 10),
                      ],
                    ),
                    contactItem('Trade Show Manager\nMargot Boyer',
                        email: 'mboyer@landscapeonline.com',
                        phone: '714-979-5276 ext. 143',
                        fax: '714-979-3543'),
                    const SizedBox(height: 20),
                    contactItem('Expo Registration',
                        email: 'tlereg@landscapeonline.com',
                        phone: '714-979-5276 ext. 127',
                        fax: '714-508-7591'),
                    const SizedBox(height: 20),
                    contactItem('Nathan Schmok\nBooth Sales',
                        phone: '714-979-5276 ext. 118',
                        fax: '714-508-7591',
                        email: 'nschmok@landscapeonline.com'),
                    const SizedBox(height: 20),
                    contactItem('Booth Payment Inquiries\nCindy McCarthy',
                        phone: '714-979-5276 ext. 122',
                        fax: '714-979-3543',
                        email: 'cmccarthy@landscapeonline.com'),
                    const SizedBox(height: 20),
                    contactItem('Educational Conference Inquiries - Greg Frank',
                        phone: '714-979-5276 ext. 132',
                        fax: '714-979-3543',
                        email: 'gfrank@landscapeonline.com'),
                    const SizedBox(height: 20),
                    contactItem('Sponsorship',
                        phone: '714-979-5276 ext. 143',
                        fax: '714-979-3543',
                        email: 'tleinfo@landscapeonline.com')
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    ));
  }

  contactItem(String title,
      {String phone = '', String fax = '', String email = ''}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text(title, 13, weight: FontWeight.w600),
        Row(
          children: [
            text('Ph ', 13, weight: FontWeight.w600),
            GestureDetector(
              onTap: () {
                launchURL('sms:$phone');
              },
              child: text(phone, 13,
                  weight: FontWeight.w600, color: Colors.blue[800]!),
            ),
          ],
        ),
        Row(
          children: [
            text('Fax ', 13, weight: FontWeight.w600),
            GestureDetector(
              onTap: () {
                //launchURL('fax:$fax');
              },
              child: text(fax, 13,
                  weight: FontWeight.w600, color: Colors.blue[800]!),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            launchURL('mailto:$email');
          },
          child: text(email, 11, color: Colors.blue[800]!),
        )
      ],
    );
  }
}
