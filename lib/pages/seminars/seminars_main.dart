import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tlevents/pages/seminars/seminar_rooms.dart';
import 'package:tlevents/pages/seminars/thursday_seminars.dart';
import 'package:tlevents/pages/seminars/wednesday_seminars.dart';
import 'package:tlevents/utils/utils.dart';

class SeminarsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: Colors.grey[100],
      //appBar: navBar(),
      child: ListView(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.09),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, bottom: 8),
            child: Text('SEMINARS',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          greyLightBorder(),
          GestureDetector(
            onTap: () => pushPage(context, const SeminarRooms()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: const Text('Seminar Room Map',
                  style: TextStyle(fontSize: 16)),
            ),
          ),
          greyLine(),
          GestureDetector(
            onTap: () => pushPage(context, WednesdaySeminars()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: const Text('Wednesday Seminars',
                  style: TextStyle(fontSize: 16)),
            ),
          ),
          greyLine(),
          GestureDetector(
            onTap: () => pushPage(context, ThursdaySeminars()),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              color: Colors.white,
              child: const Text('Thursday Seminars',
                  style: TextStyle(fontSize: 16)),
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
