import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tlevents/pages/more_pages/bad_tree_comics.dart';
import 'package:tlevents/pages/more_pages/bocce_torunaments.dart';
import 'package:tlevents/pages/more_pages/contract_law.dart';
import 'package:tlevents/pages/more_pages/design_center.dart';
import 'package:tlevents/pages/more_pages/exhibit_hall.dart';
import 'package:tlevents/pages/more_pages/green_industry_hall.dart';
import 'package:tlevents/pages/more_pages/live_equip.dart';
import 'package:tlevents/pages/more_pages/local_restaurants.dart';
import 'package:tlevents/pages/more_pages/netafim_pract.dart';
import 'package:tlevents/pages/more_pages/new_product.dart';
import 'package:tlevents/pages/more_pages/official_dpr.dart';
import 'package:tlevents/pages/more_pages/parking_map.dart';
import 'package:tlevents/pages/more_pages/rainbir2wire.dart';
import 'package:tlevents/pages/more_pages/tree_workshops.dart';
import 'package:tlevents/pages/more_pages/uptodate_show.dart';
import 'package:tlevents/pages/more_pages/water_cons.dart';
import 'package:tlevents/utils/utils.dart';

class MoreScreen extends StatelessWidget {
  List<SettingItem> items = [
    SettingItem(
        title: 'Exhibit Hall Map',
        icon: 'assets/svgs/floor.svg',
        screen: const ExhibitHall()),
    SettingItem(
        title: 'Live Equipment Demo Area',
        icon: 'assets/svgs/exhibitors.svg',
        screen: LiveEquipScreen()),
    SettingItem(
        title: 'Water Conservation Center',
        icon: 'assets/svgs/exhibitors.svg',
        screen: WaterConservation()),
    SettingItem(
        title: 'Design Center',
        icon: 'assets/svgs/exhibitors.svg',
        screen: DesignCenter()),
    SettingItem(
        title: 'New Product Demo Area',
        icon: 'assets/svgs/exhibitors.svg',
        screen: NewProduct()),
    SettingItem(
        title: 'Tree Workshops',
        icon: 'assets/svgs/exhibitors.svg',
        screen: TreeWorkshops()),
    SettingItem(
        title: 'Netafim Practical Drip Irrigation',
        icon: 'assets/svgs/exhibitors.svg',
        screen: NetafimPractial()),
    SettingItem(
        title: 'Rainbird 2-Wire Controller System',
        icon: 'assets/svgs/exhibitors.svg',
        screen: Rainbird2Wire()),
    SettingItem(
        title: 'Contract Law: Ask the Attorney Workshop',
        icon: 'assets/svgs/exhibitors.svg',
        screen: ContractLaw()),
    SettingItem(
        title: 'Green Industry Hall of Fame',
        icon: 'assets/svgs/exhibitors.svg',
        screen: GreenIndustryHall()),
    SettingItem(
        title: 'Bocce Tournaments in the Design Center',
        icon: 'assets/svgs/exhibitors.svg',
        screen: BocceTournaments()),
    SettingItem(
        title: 'Official DPR Test Site',
        icon: 'assets/svgs/exhibitors.svg',
        screen: OfficialDpr()),
    SettingItem(
        title: 'Bad Tree Comic',
        icon: 'assets/svgs/eighth.svg',
        screen: BadTreeComics()),
    SettingItem(
        title: 'Local Resturants & More',
        icon: 'assets/svgs/fifth.svg',
        screen: LocalRestaurants()),
    SettingItem(
        title: 'Parking Map',
        icon: 'assets/svgs/floor.svg',
        screen: ParkingMap()),
    SettingItem(
        title: 'Up to Date Show News',
        icon: 'assets/svgs/exhibitors.svg',
        screen: UptoDateShow()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CupertinoNavigationBar(
        middle: Text('More'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (c, i) {
              return GestureDetector(
                  onTap: () {
                    pushPage(context, items[i].screen!);
                  },
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1, color: Colors.grey[200]!))),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          items[i].icon,
                          width: 30,
                          height: 30,
                          colorFilter: ColorFilter.mode(
                              Colors.blue[800]!, BlendMode.srcIn),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.75,
                          child: moreText(
                            items[i].title,
                            16,
                            weight: FontWeight.w500,
                            left: 15,
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.zero,
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
            }),
      ),
    );
  }
}

class SettingItem {
  final String title;
  final String icon;
  final Widget? screen;
  SettingItem({this.title = '', this.icon = '', this.screen});
}
