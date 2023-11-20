// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/homepage.dart';
import 'package:wellbeingfrontend/pages/profile.dart';
import 'package:wellbeingfrontend/pages/reportPage.dart';
import 'package:wellbeingfrontend/pages/settings.dart';

class bottomNavBar extends StatefulWidget {
  const bottomNavBar({super.key});

 

  @override
  State<bottomNavBar> createState() => _bottomNavBarState();
}

class _bottomNavBarState extends State<bottomNavBar> {
  int selectedIndex=0;

  void navigateBottomBar(int index){
    setState(() {
      selectedIndex=index;
    });
  }
  final List<Widget> pages=[
    HomePage(),
    ReportPage(),
    ProfilePage(),
    SettingsPage(),
   
    
  
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      body: pages[selectedIndex],
     bottomNavigationBar: BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: navigateBottomBar,
     type: BottomNavigationBarType.fixed,
      items:[
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.report),label: "Report"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),

      ],
      
      ),
    );
  }
} 