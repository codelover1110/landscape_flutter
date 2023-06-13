import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class TreeWorkshops extends StatelessWidget {
  TreeWorkshops({super.key});

  final logosList = [
    LogoItem(
        image: 'assets/tle_images/DLT Growers.jpg', link: 'http://dltgrow.com'),
    LogoItem(
        image: 'assets/tle_images/Moon Valley Nursery.jpg',
        link: 'https://www.moonvalleynurseries.com'),
    LogoItem(
        image: 'assets/tle_images/Performance Nursery, Inc.jpg',
        link: 'http://performancenurserywholesale.com'),
    LogoItem(
        image: 'assets/tle_images/Suncrest Nurseries Inc.jpg',
        link: 'https://suncrestnurseries.com'),
    LogoItem(
        image: 'assets/tle_images/Sunrise Nursery.jpg',
        link: 'http://www.sunrisenurseryllc.com'),
    LogoItem(
        image: 'assets/tle_images/Hanson Palms.jpg',
        link: 'http://www.hansonpalms.com'),
    LogoItem(
        image: 'assets/tle_images/Senna Tree Company.jpg',
        link: 'http://sennatree.com'),
    LogoItem(
        image: 'assets/tle_images/Otto & Sons Nursery.jpg',
        link: 'https://www.ottoandsons-nursery.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                text('TLE Tree Academy - Outdoor Workshops', 18,
                    weight: FontWeight.bold, top: 20, bottom: 5),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 140,
                  constraints: const BoxConstraints(maxWidth: 359),
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              'assets/tle_images/tree workshops.jpg'))),
                ),
                const SizedBox(height: 20),
                workshopItem(
                    'Rigging, Chipper and Chainsaw Safety by Jose Mercado (Outside)',
                    'Wednesday, October 10th: 9:30 - 11:00 AM'),
                workshopItem(
                    'Proper Climbing Techniques, Rope and Saddle, Aerial Lift Safety by Jose Mercado (Outside)',
                    'Wednesday, October 10th: 1:00 - 2:30 PM'),
                workshopItem('Pruning Shade Trees (Spanish) by Oscar Sanchez',
                    'Thursday, October 11th: 10:00 - 11:30 AM'),
                workshopItem('Pruning Shade Trees by Oscar Sanchez',
                    'Thursday, October 11th: 1:00 - 2:30 PM'),
                text(
                    'Check out these Wholesale Tree Suppliers\nTo view company website, click on logo',
                    14,
                    textAlign: TextAlign.center,
                    top: 10),
                Container(
                  margin: const EdgeInsets.only(top: 15),
                  constraints: const BoxConstraints(maxWidth: 200),
                  child: logosGrid(context),
                ),
                const SizedBox(height: 70),
              ],
            ),
          )
        ],
      ),
    );
  }

  workshopItem(String title, String dateTime) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          text(title, 14, weight: FontWeight.bold, textAlign: TextAlign.center),
          text(dateTime, 14, textAlign: TextAlign.center, top: 15),
          drawLine(3, Colors.black, vert: 20)
        ],
      ),
    );
  }

  logosGrid(BuildContext context) {
    return Container(
      //height: h,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Padding(
        padding: const EdgeInsets.only(top: 0),
        child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: logosList.length,
            gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight(
                    crossAxisCount: 2,
                    crossAxisSpacing: 35,
                    mainAxisSpacing: 20,
                    height: 61),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  launchURL(logosList[index].link);
                },
                child: Container(
                  constraints:
                      const BoxConstraints(maxWidth: 75, maxHeight: 58),
                  child: Image.asset(logosList[index].image, fit: BoxFit.fill),
                ),
              );
            }),
      ),
    );
  }
}

class LogoItem {
  final String image;
  final String link;
  LogoItem({required this.image, required this.link});
}
