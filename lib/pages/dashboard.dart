import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tlevents/colors.dart';
import 'package:tlevents/pages/contact_screen.dart';
import 'package:tlevents/pages/exhibitors_screen.dart';
import 'package:tlevents/pages/more_screen.dart';
import 'package:tlevents/pages/schedule_screen.dart';
import 'package:tlevents/pages/seminars/seminars_main.dart';
import 'package:tlevents/utils/utils.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;

  final screens = [
    ScheduleScreen(),
    ExhibitorsScreen(),
    SeminarsScreen(),
    ContactScreen(),
    MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          currentIndex: _currentIndex,
          onTap: onTabTapped,
          items: [
            BottomNavigationBarItem(
                icon: SvgPicture.asset('assets/svgs/schedule.svg',
                    width: 27, height: 27),
                label: 'Schedule',
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/exhibitors.svg',
                  width: 27, height: 27),
              label: 'Exhibitors',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/seminars.svg',
                  width: 27, height: 27),
              label: 'Seminars',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/svgs/contact.svg',
                  width: 27, height: 27),
              label: 'Contact',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              return Container(
                color: Colors.white,
                child: SafeArea(
                  top: false,
                  bottom: false,
                  child: CupertinoApp(
                    debugShowCheckedModeBanner: false,
                    color: Colors.white,
                    home: CupertinoPageScaffold(
                      backgroundColor: Colors.white,
                      resizeToAvoidBottomInset: false,
                      child: screens[_currentIndex],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: screens[_page],
  //     bottomNavigationBar: CupertinoTabBar(
  //       backgroundColor: Colors.grey[100],
  //       iconSize: 24,
  //       activeColor: Colors.blue[800],
  //       // selectedFontSize: 10,
  //       // unselectedFontSize: 10,
  //       // showSelectedLabels: true,
  //       // selectedItemColor: Colors.blue[800],
  //       // showUnselectedLabels: true,
  //       items: <BottomNavigationBarItem>[
  // BottomNavigationBarItem(
  //     icon: SvgPicture.asset('assets/svgs/schedule.svg',
  //         width: 27, height: 27),
  //     label: 'Schedule',
  //     backgroundColor: Colors.green),
  // BottomNavigationBarItem(
  //   icon: SvgPicture.asset('assets/svgs/exhibitors.svg',
  //       width: 27, height: 27),
  //   label: 'Exhibitors',
  // ),
  // BottomNavigationBarItem(
  //   icon: SvgPicture.asset('assets/svgs/seminars.svg',
  //       width: 27, height: 27),
  //   label: 'Seminars',
  // ),
  // BottomNavigationBarItem(
  //   icon: SvgPicture.asset('assets/svgs/contact.svg',
  //       width: 27, height: 27),
  //   label: 'Contact',
  // ),
  // BottomNavigationBarItem(
  //   icon: Icon(Icons.more_horiz),
  //   label: 'More',
  // ),
  //       ],
  //       //type: BottomNavigationBarType.fixed,

  //       currentIndex: _page,
  //       //selectedLabelStyle: const TextStyle(color: Colors.black),
  //       onTap: (i) {
  //         setState(() {
  //           _page = i;
  //         });
  //       },
  //       //elevation: 5
  //     ),
  //   );
  // }
}
