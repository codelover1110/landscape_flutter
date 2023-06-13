import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/colors.dart';
import 'package:tlevents/utils/utils.dart';

class LocalRestaurants extends StatelessWidget {
  var restaurantLinks = [
    LinkItem(
        title: '*Gladstones',
        link:
            "https://www.google.com/maps/place/Gladstone's+Long+Beach/@33.7619814,-118.1954937,17z/data=!3m2!4b1!5s0x80dd31254dde25a1:0x7edf0a3a6363dcc5!4m5!3m4!1s0x80dd313b14905b33:0x79c3ee16f48cb024!8m2!3d33.761977!4d-118.193305"),
    LinkItem(
        title: 'Parkers Lighthouse',
        link:
            "https://www.google.com/maps/place/Parkers'+Lighthouse/@33.759934,-118.19408,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3125a85f8ef3:0x13a546608196176c!8m2!3d33.759934!4d-118.191886"),
    LinkItem(
        title: 'Yard House',
        link:
            "https://www.google.com/maps/place/Yard+House/@33.761387,-118.192326,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3124ea943e27:0xef87c1b9a4482e47!8m2!3d33.761387!4d-118.190132"),
    LinkItem(
        title: '*P.F. Chang’s',
        link:
            "https://www.google.com/maps/place/P.F.+Chang's/@33.7624576,-118.1957415,17z/data=!3m2!4b1!5s0x80dd313aadc2d46d:0x7edf0a3aae1fd475!4m5!3m4!1s0x80dd312ffc463e51:0x1ca8b1633839c2e9!8m2!3d33.7624576!4d-118.1935475"),
    LinkItem(
        title: 'Tokyo Wako',
        link:
            "https://www.google.com/maps/place/Tokyo+Wako/@33.7620619,-118.1949861,17z/data=!3m2!4b1!5s0x80dd312549c391af:0x7edf0a3ac049f1e5!4m5!3m4!1s0x80dd313ab45a61e9:0xef9bc6b9026e5567!8m2!3d33.7620619!4d-118.1927921"),
    // map 006
    LinkItem(
        title: 'Tequila Jack’s',
        link:
            "https://www.google.com/maps/place/Tequila+Jack's+Restaurant+and+Cantina/@33.7610782,-118.1923341,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3124f224974b:0x542431d2f71d8879!8m2!3d33.7610782!4d-118.1901401"),
    LinkItem(
        title: 'Famous Daves’s\nBBQ',
        link:
            "https://www.google.com/maps/place/Famous+Dave's+Bar-B-Que/@33.762321,-118.194827,17z/data=!3m2!4b1!5s0x80dd312535bd0b7b:0x7edf0a3a0c0f3c15!4m5!3m4!1s0x80dd313ab45a61e9:0x4eae7dbe1c74949b!8m2!3d33.762321!4d-118.192633"),
    LinkItem(
        title: 'California Pizza\nKitchen',
        link:
            "https://www.google.com/maps/place/California+Pizza+Kitchen/@33.7623011,-118.2628557,12z/data=!3m1!5s0x80dd313a8e8c5e9d:0x7edf0a3aeca40525!4m8!1m2!2m1!1sCalifornia+Pizza+Kitchen+Long+Beach!3m4!1s0x80dd313a40d0293b:0xbac6e3e985088dd3!8m2!3d33.765139!4d-118.192752"),
    LinkItem(
        title: 'ShenanIgans\nIrish Pub',
        link:
            "https://www.google.com/maps/place/Shenanigans+Irish+Pub+%26+Grille/@33.7605676,-118.1933704,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3124620f2f4f:0xa177d8f020c18df2!8m2!3d33.7605676!4d-118.1911764"),
    LinkItem(
        title: 'Queensview\nSteak House',
        link:
            "https://www.google.com/maps/place/Queensview+Steakhouse/@33.7598599,-118.1940351,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3125a8dd68e1:0xcadaa87a95de641f!8m2!3d33.7598599!4d-118.1918411"),
    LinkItem(
        title: 'Auld Dubliner\nIrish Pub',
        link:
            "https://www.google.com/maps/place/The+Auld+Dubliner/@33.764837,-118.1948307,17z/data=!3m2!4b1!5s0x80dd313a8e8c5e9d:0x7edf0a3aeca40525!4m5!3m4!1s0x80dd313a41364d11:0x6b07f904c7281acf!8m2!3d33.764837!4d-118.1926367"),
    LinkItem(
        title: 'Islands',
        link:
            "https://www.google.com/maps/place/Islands+Fine+Burgers+%26+Drinks/@33.7977499,-118.174965,13z/data=!3m1!5s0x80dd313a6796a709:0x7edf0a3a8e003cf5!4m8!1m2!2m1!1sIslands+Long+Beach!3m4!1s0x80dd313a40b0e8c1:0xf15bd60ca303d77b!8m2!3d33.765638!4d-118.192758"),
    LinkItem(
        title: '*Bubba Gump\nShrimp Co',
        link:
            "https://www.google.com/maps/place/Bubba+Gump+Shrimp+Co./@33.763337,-118.1979266,17z/data=!3m2!4b1!5s0x80dd3130685869c9:0x7edf0a3a5f19d8f5!4m5!3m4!1s0x80dd313078be60f5:0xc0ee9ca011f8b739!8m2!3d33.7633326!4d-118.1957379"),
    LinkItem(
        title: '*Buono\'s\nPizzeria',
        link:
            "https://www.google.com/maps/place/Buono's+Authentic+Pizzeria/@33.7634079,-118.2307574,13z/data=!4m8!1m2!2m1!1sBuono's+Authentic+Pizzeria+Long+Beach!3m4!1s0x80dd3130aec26ab1:0x55af4e62e4f23228!8m2!3d33.766689!4d-118.194314"),
  ];

  var entertainmentLinks = [
    LinkItem(
        title: 'Aquarium of\nthe Pacific',
        link:
            "https://www.google.com/maps/place/Aquarium+of+the+Pacific/@33.7621532,-118.1991695,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd313032cc7cb5:0x96dadf4782e15e96!8m2!3d33.7621488!4d-118.1969808"),
    LinkItem(
        title: 'The Queen Mary',
        link:
            "https://www.google.com/maps/place/The+Queen+Mary/@33.75264,-118.1925122,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd30d89c406b95:0x55db333697f8fe34!8m2!3d33.7526356!4d-118.1903235"),
    LinkItem(
        title: 'Disneyland',
        link:
            "https://www.google.com/maps/place/Disneyland+Park/@33.8120962,-117.9211629,17z/data=!3m1!4b1!4m5!3m4!1s0x80dcd7d12b3b5e6b:0x2ef62f8418225cfa!8m2!3d33.8120918!4d-117.9189742"),
    LinkItem(
        title: '*Long Beach\nBoat Rentals',
        link:
            "https://www.google.com/maps/place/Long+Beach+Boat+Rentals/@33.7616914,-118.1926957,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3124ea943e27:0xceadf559a178c577!8m2!3d33.761687!4d-118.190507"),
    LinkItem(
        title: '*Harbor Breeze\nCruises',
        link:
            "https://www.google.com/maps/place/Harbor+Breeze+Cruises/@33.7622314,-118.1990527,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3130324d18c9:0xc06297f4dec63891!8m2!3d33.762227!4d-118.196864"),
    LinkItem(
        title: '*The\nLaugh Factory',
        link:
            "https://www.google.com/maps/place/Laugh+Factory/@33.7638094,-118.1948957,17z/data=!3m2!4b1!5s0x80dd313a8e8c5e9d:0x7edf0a3aeca40525!4m5!3m4!1s0x80dd313aeab37d7b:0x6e0c8fba7c2adb50!8m2!3d33.763805!4d-118.192707"),
    LinkItem(
        title: '*Long Beach\nSegway Tours',
        link:
            "https://www.google.com/maps/place/Long+Beach+Segway+Tours+by+Wheel+Fun+Rentals/@33.7644686,-118.1933065,16z/data=!4m8!1m2!2m1!1sLong+Beach+Segway+Tours+Long+Beach!3m4!1s0x80dd3125a82ca379:0x13cf9c10c7d3b5c5!8m2!3d33.760366!4d-118.191707"),
    LinkItem(
        title: '*Wheel Fun\nRentals',
        link:
            "https://www.google.com/maps/place/Wheel+Fun+Rentals/@33.7603324,-118.1939067,17z/data=!3m1!4b1!4m5!3m4!1s0x80dd3124626a8261:0xcc799507f64f394e!8m2!3d33.760328!4d-118.191718"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                const SizedBox(height: 20),
                imageButton('View All Discounts', width: 170, height: 34,
                    onPressed: () {
                  launchURL(
                      'http://www.landscapeonline.com/template-tle001.php');
                }),
                const SizedBox(height: 10),
                Image.asset('assets/logo.png', width: 240, height: 81),
                textBar(text: 'The Landscape Expo', textColor: Colors.white),
                text(
                    'Long Beach Convention Center,\n300 East Ocean Boulevard, Long Beach, California 90802 The Arena and Hall C \nShow Hours\nWednesday Oct. 10th 9:00AM – 3:00PM\nThursday Oct. 11th 9:00AM – 3:00PM  Seminar Hours\nWednesday: 8:00 AM – 4:30 PM \nThrusday: 8:00 AM - 3:00PM',
                    14,
                    textAlign: TextAlign.center,
                    vertical: 20,
                    horizontal: MediaQuery.of(context).size.width * 0.1),
                imageButton('Directions', width: 163, height: 54,
                    onPressed: () {
                  launchURL(
                      'https://www.google.com/maps/place/Long+Beach+Convention+%26+Entertainment+Center/@33.765268,-118.1915272,17z/data=!3m2!4b1!5s0x80dd313b41c1b16d:0xb11de026557b304c!4m5!3m4!1s0x80dd313b68c4eae7:0x69f1fff3cb508d42!8m2!3d33.7652636!4d-118.1893385');
                }),
                const SizedBox(height: 8),
                textBar(text: 'Resturants', textColor: Colors.white),
                const SizedBox(height: 10),
                itemsList(restaurantLinks),
                const SizedBox(height: 23),
                textBar(text: 'Entertainment', textColor: Colors.white),
                const SizedBox(height: 25),
                itemsList(entertainmentLinks),
                const SizedBox(height: 80),
              ],
            ),
          )
        ],
      ),
    );
  }

  ListView itemsList(List<LinkItem> items) {
    return ListView.builder(
      itemCount: items.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (c, i) {
        var restItem = items[i];
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: text(restItem.title, 16,
                    weight: FontWeight.w600, textAlign: TextAlign.right),
              ),
              Expanded(
                flex: 1,
                child: imageButton('Directions', width: 130, height: 28,
                    onPressed: () {
                  launchURL(restItem.link);
                }),
              ),
            ],
          ),
        );
      },
    );
  }

  textBar(
      {String text = '',
      Color color = greenColor,
      Color textColor = Colors.black,
      double fontSize = 17}) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
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

class LinkItem {
  final String title;
  final String link;
  LinkItem({this.title = '', this.link = ''});
}
