import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/components/bottomNavbar.dart';
import 'package:wellbeingfrontend/report%20/reportPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: bottomNavBar(),
      
    );
  }
}