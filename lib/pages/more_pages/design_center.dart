import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tlevents/utils/utils.dart';

class DesignCenter extends StatelessWidget {
  DesignCenter({super.key});

  final logosList = [
    LogoItem(
        image: 'assets/tle_images/AEI Corporation.jpg',
        link: 'https://www.aeicorporation.com'),
    LogoItem(
        image: 'assets/tle_images/American Sod Farms.jpg',
        link: 'https://www.evergreenturf.com'),
    LogoItem(
        image: 'assets/tle_images/Asian Ceramics 2.jpg',
        link: 'http://asian-ceramics.com'),
    LogoItem(
        image: 'assets/tle_images/Black Oak Foundry.jpg',
        link: 'https://blackoakfoundry.com'),
    LogoItem(
        image: 'assets/tle_images/Century Products.jpg',
        link: 'http://centuryrootbarrier.com'),
    LogoItem(
        image: 'assets/tle_images/CLASS Fund Calif.jpg',
        link: 'http://classfund.org'),
    LogoItem(
        image: 'assets/tle_images/Corona Lighting.jpg',
        link: 'http://coronalighting.com'),
    LogoItem(
        image: 'assets/tle_images/Direct Lighting Outdoor Lifestyles.jpg',
        link: 'https://directlol.com'),
    LogoItem(
        image:
            'assets/tle_images/Duramax Building Products - US Polymers Inc.jpg',
        link: 'https://www.duramaxbp.com'),
    LogoItem(
        image: 'assets/tle_images/Ewing Irrigation Products.jpg',
        link: 'https://ewingirrigation.com'),
    LogoItem(
        image: 'assets/tle_images/Florasource LTD.jpg',
        link: 'http://florasourceltd.com'),
    LogoItem(
        image: 'assets/tle_images/Focus Industries.jpg',
        link: 'http://focusindustries.com'),
    LogoItem(
        image: 'assets/tle_images/Gail Materials.jpg',
        link: 'http://gailmaterials.net'),
    LogoItem(
        image: 'assets/tle_images/Garden Light LED.jpg',
        link: 'https://gardenlightled.com'),
    LogoItem(
        image: "assets/tle_images/Green's Best.jpg",
        link: 'http://greensbestmulch.com'),
    LogoItem(
        image: 'assets/tle_images/Gustin Ranch Nursery.jpg',
        link: 'http://gustinranchnursery.com'),
    LogoItem(
        image: 'assets/tle_images/Hanson Palms.jpg',
        link: 'http://www.hansonpalms.com'),
    LogoItem(
        image: 'assets/tle_images/Hunter Industries.jpg',
        link: 'https://www.hunterindustries.com'),
    LogoItem(
        image: 'assets/tle_images/Kurapia Inc.jpg',
        link: 'http://www.kurapia.com'),
    LogoItem(
        image: 'assets/tle_images/L.A. Steelcraft.jpg',
        link: 'http://www.lasteelcraft.com'),
    LogoItem(
        image: 'assets/tle_images/Lightcraft Outdoor.jpg',
        link: 'http://lightcraftoutdoor.com'),
    LogoItem(
        image: 'assets/tle_images/Modfountains.jpg',
        link: 'http://modfountain.com'),
    LogoItem(
        image: 'assets/tle_images/Moon Valley Nursery.jpg',
        link: 'http://moonvalleynurseries.com'),
    LogoItem(
        image: 'assets/tle_images/Mountain States Wholesale Nursery.jpg',
        link: 'http://mswn.com'),
    LogoItem(
        image: 'assets/tle_images/Oak Landscape Lighting by Elram, Inc.jpg',
        link: 'http://elramusa.com'),
    LogoItem(
        image: 'assets/tle_images/Otto & Sons Nursery.jpg',
        link: 'https://www.ottoandsons-nursery.com'),
    LogoItem(
        image: 'assets/tle_images/Outdoor Fire Concepts.jpg',
        link: 'https://www.outdoorfireconcepts.com'),
    LogoItem(
        image: 'assets/tle_images/Pacific Interlocks.jpg',
        link: 'https://www.pacinterlock.com'),
    LogoItem(
        image: 'assets/tle_images/Performance Nursery, Inc.jpg',
        link: 'http://performancenurserywholesale.com'),
    LogoItem(
        image:
            'assets/tle_images/Pottery Manufacturing & Distribution, Inc.jpg',
        link: 'http://potterymfg.com'),
    LogoItem(
        image: 'assets/tle_images/QDISurfaces.jpg',
        link: 'https://qdisurfaces.com'),
    LogoItem(
        image: 'assets/tle_images/Renewal by Andersen.jpg',
        link: 'https://www.renewalbyandersen.com'),
    LogoItem(
        image: 'assets/tle_images/Royal Building Products.jpg',
        link: 'http://www.royalbuildingproducts.com'),
    LogoItem(
        image: 'assets/tle_images/RWP Landscape Materials.jpg',
        link: 'http://rwpmulch.com/index.html'),
    LogoItem(
        image: 'assets/tle_images/Senna Tree Company.jpg',
        link: 'http://sennatree.com'),
    LogoItem(
        image: 'assets/tle_images/ShelterWorks Ltd.jpg',
        link: 'ttp://faswall.com'),
    LogoItem(
        image: 'assets/tle_images/SoCal Mulch, Inc.jpg',
        link: 'https://socalmulch.com'),
    LogoItem(
        image: 'assets/tle_images/Southwest Aquatics, LLC.jpg',
        link: 'http://southwestaquatics.net'),
    LogoItem(
        image: 'assets/tle_images/Southwest Greens.jpg',
        link: 'https://southwestgreens.com'),
    LogoItem(
        image: 'assets/tle_images/Sunrise Nursery.jpg',
        link: 'http://www.sunrisenurseryllc.com'),
    LogoItem(
        image: 'assets/tle_images/SWG Trees.jpg', link: 'http://swgtrees.com'),
    LogoItem(
        image: 'assets/tle_images/TechniSoil.jpg',
        link: 'http://technisoil.com'),
    LogoItem(
        image: 'assets/tle_images/Trendy Surfaces.jpg',
        link: 'https://trendysurfacesinc.com'),
    LogoItem(
        image: 'assets/tle_images/TrueLine.jpg', link: 'http://gotrueline.com'),
    LogoItem(
        image: 'assets/tle_images/Vista Professional Outdoor Lighting.jpg',
        link: 'http://vistapro.com'),
    LogoItem(
        image: 'assets/tle_images/Waterbearing.jpg',
        link: 'http://waterbearing.com'),
  ];

  //http://centuryrootbarrier.com

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              text('Design Center', 19,
                  weight: FontWeight.bold, top: 30, bottom: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  paddingImage('assets/tle_images/design1.jpg', w: 175, h: 106),
                  const SizedBox(width: 8),
                  paddingImage('assets/tle_images/design2.jpg', w: 175, h: 106),
                ],
              ),
              text(
                  'Introducing The ALL NEW Design Center At The Landscape Expo 2018!',
                  14,
                  vertical: 20,
                  horizontal: 20),
              text(
                  'With over 24% (more than 700) of last year\'s attendees offering landscape architectural or design services, exhibitors are lining up to show you the latest and greatest in residential landscape features for your custom designs.',
                  14,
                  horizontal: 20),
              text('To view company website, click on logo', 12,
                  horizontal: 20, vertical: 15),
              Container(
                margin: const EdgeInsets.only(top: 15),
                constraints: const BoxConstraints(maxWidth: 360),
                child: logosGrid(context),
              ),
              const SizedBox(height: 50)
            ],
          )
        ],
      ),
    );
  }

  logosGrid(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
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
                    crossAxisCount: 4,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                    height: 58),
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

/// Sliver Grid Delegate
///
class SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight
    extends SliverGridDelegate {
  const SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight({
    required this.crossAxisCount,
    this.mainAxisSpacing = 0.0,
    this.crossAxisSpacing = 0.0,
    this.height = 56.0,
  })  : assert(crossAxisCount != null && crossAxisCount > 0),
        assert(mainAxisSpacing != null && mainAxisSpacing >= 0),
        assert(crossAxisSpacing != null && crossAxisSpacing >= 0),
        assert(height != null && height > 0);

  /// The number of children in the cross axis.
  final int crossAxisCount;

  /// The number of logical pixels between each child along the main axis.
  final double mainAxisSpacing;

  /// The number of logical pixels between each child along the cross axis.
  final double crossAxisSpacing;

  /// The height of the crossAxis.
  final double height;

  bool _debugAssertIsValid() {
    assert(crossAxisCount > 0);
    assert(mainAxisSpacing >= 0.0);
    assert(crossAxisSpacing >= 0.0);
    assert(height > 0.0);
    return true;
  }

  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    assert(_debugAssertIsValid());
    final double usableCrossAxisExtent =
        constraints.crossAxisExtent - crossAxisSpacing * (crossAxisCount - 1);
    final double childCrossAxisExtent = usableCrossAxisExtent / crossAxisCount;
    final double childMainAxisExtent = height;
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: childMainAxisExtent + mainAxisSpacing,
      crossAxisStride: childCrossAxisExtent + crossAxisSpacing,
      childMainAxisExtent: childMainAxisExtent,
      childCrossAxisExtent: childCrossAxisExtent,
      reverseCrossAxis: axisDirectionIsReversed(constraints.crossAxisDirection),
    );
  }

  @override
  bool shouldRelayout(
      SliverGridDelegateWithFixedCrossAxisCountAndFixedHeight oldDelegate) {
    return oldDelegate.crossAxisCount != crossAxisCount ||
        oldDelegate.mainAxisSpacing != mainAxisSpacing ||
        oldDelegate.crossAxisSpacing != crossAxisSpacing ||
        oldDelegate.height != height;
  }
}
