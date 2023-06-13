import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tlevents/utils/utils.dart';

class SeminarRooms extends StatelessWidget {
  const SeminarRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: navBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const AutoSizeText(
              'Seminar Rooms',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 3),
            const AutoSizeText(
              'Room Map Below - For Water Conservation, Tree Trimming and Outdoor demo areas, view the floor map',
              minFontSize: 12,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            Image.asset('assets/tle_images/seminar-floor-plan.jpg')
          ],
        ),
      ),
    );
  }
}
