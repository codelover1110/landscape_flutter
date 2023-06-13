import 'package:flutter/material.dart';
import 'package:tlevents/colors.dart';
import 'package:tlevents/utils/utils.dart';

class BadTreeComics extends StatelessWidget {
  const BadTreeComics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: navBar(),
      body: ListView(
        children: [
          Column(
            children: [
              Image.asset('assets/logo.png', width: 240, height: 81),
              GestureDetector(
                onTap: () {
                  launchURL(
                      'http://www.landscapeonline.com/bad-tree/index.php');
                },
                child: text('View more comics', 13, color: Colors.blue[800]!),
              ),
              text('Need Something to Do at Lunch!', 17, top: 2),
              text('Get the Bad Tree Game - It\'s Free!', 13,
                  top: 2, bottom: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  text('Best viewed Horizontally', 13, top: 2, right: 5),
                  Image.asset('assets/tle_images/apple-icon.jpg',
                      width: 163, height: 45),
                ],
              ),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-05a.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-03d.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-03f.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-09f.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-07a.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-08c.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-08a.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-06e.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              Image.asset('assets/tle_images/bad-tree-med-2018-06g.jpg',
                  width: MediaQuery.of(context).size.width * 0.9,
                  fit: BoxFit.fitWidth),
              const SizedBox(height: 50),
              GestureDetector(
                onTap: () {
                  launchURL(
                      'http://www.landscapeonline.com/bad-tree/index.php');
                },
                child: text('View more comics', 15, color: Colors.blue[800]!),
              ),
              const SizedBox(height: 80),
            ],
          )
        ],
      ),
    );
  }
}
