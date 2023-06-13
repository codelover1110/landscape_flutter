import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class GreenIndustryHall extends StatelessWidget {
  const GreenIndustryHall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              text('Green Industry Hall of Fame', 18,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  paddingImage('assets/tle_images/green industry1.jpg',
                      w: 175, h: 106),
                  const SizedBox(width: 8),
                  paddingImage('assets/tle_images/green industry2.jpg',
                      w: 175, h: 106),
                ],
              ),
              const SizedBox(height: 20),
              text(
                  'Green Industry awards are given each year to inductees of the Green Industry Hall of Fame to well deserved professionals in the landscape industry. \nCome and check out who has been given the latest honor in the Green Industry Hall of Fame.',
                  14,
                  textAlign: TextAlign.center,
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  text('Featuring:', 17,
                      horizontal: MediaQuery.of(context).size.width * 0.11,
                      vertical: 10),
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.02),
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            text(
                                'Allen Chariton (2016)\nBill Cathcart (2018)\nBob Mattson (2009)\nBob Perry (2012)\nBrad Monroe (2013)\nBurton Sperber (2010)\nCandy Fiske (2018)\nCarl Kah (2018)\nCharles Nunley (2007)\nCheryl Goar (2018)\nChuck Hoover (2013)\nDave Davis (2010)\nDave Fujino (2017)\nDavid B. Tiglio (2006)\nDavid L. Lannom (2015)\nDavid Pagano (2013)\nDavid Witzke (2008)\nDenne Goldstein (2008)\nDennis Pittenger (2016)\nDonald C. Brinkerhoff (2015)\nDonald M. Roberts (2017)\nDonald Phelps (2009)\nDr. Barry Cohen (2012)\nDr. John Kabashima (2014)\nDr. John Thomson (2012)\nDr. Joseph You-Tsai Hung (2005)\nEdwin J. Hunter (2012)\nEric Triplett (2015)\nFred Hanker (2014)\nGary Hayakawa (2014)\nGary Vallen (2010)\nGeorge Schmok (2014)\nGilbert Resendez (2013)\nGus Fleming (2008)\nH. Clay Kellog (2013)\nHaruo Yamashiro (2009)\nJacquie Courtright (2016)\nJames Bethke (2018)',
                                11,
                                textAlign: TextAlign.center),
                          ],
                        )),
                    Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            text(
                                'John Boething (2015)\nJohn Culbertson (2016)\nJon Alsdorf (2012)\nJudy Guido (2018)\nLarry Rohlfes (2016)\nLeslee Temple (2014)\nLynda Wightman (2016)\nMark Pedicone (2015)\nMcKenzie Cook (2017)\nMickey Strauss (2009)\nMike Baron (2014)\nMike Schwartz (2009)\nMiles Rosedale (2010)\nNelson Colvin (2010)\nNick Federoff (2012)\nPeter Estournes (2017)\nRay York (2012)\nRich Angelo (2008)\nRichard Cohen (2013)\nRichard Daigle (2014)\nRobert Cardoza (2010)\nRobert Crudup (2012)\nRobert J. Tiglio (2006)\nRobert Ludekens (2017)\nRobert Scofield (2016)\nRoger Fiske (2018)\nSharon McGuire (2010)\nSteve Wightman (2015)\nStuart J. Sperber (2009)\nSue York (2013)\nSusan Sims (2015)\nTed Byrne (2009)\nTom Christy (2012)\nTom Courtright (2016)\nTom Gentile (2015)\nTony LaFetra (2010)\nWarren Gorowitz (2017)',
                                11,
                                textAlign: TextAlign.center),
                          ],
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 70),
            ],
          )
        ],
      ),
    );
  }
}
