import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:tlevents/pages/webview_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io' show Platform;

svgImage(String name) {
  return 'assets/svgs/$name.svg';
}

Future<void> launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
  // if (Platform.isAndroid) {
  //   Get.to(() => WebViewScreen(url: url));
  // } else {
  //   if (await canLaunchUrl(Uri.parse(url))) {
  //     await launchUrl(Uri.parse(url));
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }
}

pushPage(BuildContext context, Widget screen) {
  return Navigator.of(context, rootNavigator: false).push(
      MaterialPageRoute(builder: (context) => screen, maintainState: true));
}

navBar() {
  return const CupertinoNavigationBar(backgroundColor: Colors.white);
}

text(String text, double size,
    {FontWeight weight = FontWeight.normal,
    Color color = Colors.black,
    double top = 0,
    double left = 0,
    double right = 0,
    double bottom = 0,
    double horizontal = 0,
    double vertical = 0,
    TextAlign textAlign = TextAlign.left}) {
  return Padding(
    padding: horizontal == 0 && vertical == 0
        ? EdgeInsets.only(left: left, right: right, bottom: bottom, top: top)
        : EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
    child: AutoSizeText(text,
        textAlign: textAlign,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color)),
  );
}

moreText(String text, double size,
    {FontWeight weight = FontWeight.normal,
    Color color = Colors.black,
    double top = 0,
    double left = 0,
    double right = 0,
    double bottom = 0,
    double horizontal = 0,
    double vertical = 0,
    TextAlign textAlign = TextAlign.left}) {
  return Padding(
    padding: horizontal == 0 && vertical == 0
        ? EdgeInsets.only(left: left, right: right, bottom: bottom, top: top)
        : EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
    child: AutoSizeText(text,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        minFontSize: 16,
        textAlign: textAlign,
        style: TextStyle(fontSize: size, fontWeight: weight, color: color)),
  );
}

maxWidthImage(String url, double maxWidth, double height) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    width: double.maxFinite,
    height: height,
    constraints: BoxConstraints(maxWidth: maxWidth),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(url)),
    ),
  );
}

imageButton(String title,
    {double width = 134,
    double height = 40,
    double size = 14,
    FontWeight weight = FontWeight.bold,
    Function()? onPressed}) {
  return GestureDetector(
    onTap: onPressed,
    child: Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
          //color: Colors.green,
          image: DecorationImage(
              image: AssetImage('assets/tle_images/button2.jpg'))),
      child: Center(
        child: text(title, 14, color: Colors.white, weight: FontWeight.bold),
      ),
    ),
  );
}

drawLine(double height, Color color, {double hor = 0, double vert = 0}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: hor, vertical: vert),
    width: double.maxFinite,
    height: height,
    color: color,
  );
}

paddingImage(String url,
    {double w = 100, double h = 90, double hor = 0, double vert = 0}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: hor, vertical: vert),
    child: Image.asset(
      url,
      width: w,
      height: h,
      fit: BoxFit.fill,
    ),
  );
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
