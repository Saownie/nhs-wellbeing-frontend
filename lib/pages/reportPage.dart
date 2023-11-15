// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/reportPage2.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({super.key});

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bullying & Harrassment')),
      body: Center(
        child: ElevatedButton(
          child: Text("Report Bullying & Harrassment"),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ReportPage2(),
              ),
              );
          },
          ),
        ),
    );
  }
}