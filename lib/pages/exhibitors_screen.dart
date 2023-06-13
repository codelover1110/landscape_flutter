import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tlevents/pages/exhibitors_pages/ah_list.dart';
import 'package:tlevents/pages/exhibitors_pages/ip_list.dart';
import 'package:tlevents/pages/exhibitors_pages/qz_list.dart';
import 'package:tlevents/utils/utils.dart';

class ExhibitorsScreen extends StatefulWidget {
  const ExhibitorsScreen({super.key});

  @override
  State<ExhibitorsScreen> createState() => _ExhibitorsScreenState();
}

class _ExhibitorsScreenState extends State<ExhibitorsScreen> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[100],
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 8),
            child: Text('EXHIBITORS',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          greyLightBorder(),
          GestureDetector(
            onTap: () => pushPage(context, const AHExhibitors()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child:
                  const Text('Exhibitors A-H', style: TextStyle(fontSize: 16)),
            ),
          ),
          greyLine(),
          GestureDetector(
            onTap: () => pushPage(context, IPExhibitors()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child:
                  const Text('Exhibitors I-P', style: TextStyle(fontSize: 16)),
            ),
          ),
          greyLine(),
          GestureDetector(
            onTap: () => pushPage(context, QZExhibitors()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child:
                  const Text('Exhibitors Q-Z', style: TextStyle(fontSize: 16)),
            ),
          ),
          greyLightBorder()
        ],
      ),
    );
  }

  greyLightBorder() {
    return Container(
      width: double.maxFinite,
      height: 1,
      color: Colors.grey[200],
    );
  }

  greyLine() {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      width: double.maxFinite,
      height: 0.5,
      color: Colors.grey[300],
    );
  }
}
