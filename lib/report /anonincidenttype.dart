// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/homepage.dart';
import 'package:wellbeingfrontend/report%20/anonreportpage.dart';
import 'package:wellbeingfrontend/report%20/stepperbar.dart';
import 'package:wellbeingfrontend/report%20/victimdetails.dart';

class AnonIncidentType extends StatefulWidget {
  const AnonIncidentType({super.key});

  @override
  State<AnonIncidentType> createState() => _AnonIncidentTypeState();
}

class _AnonIncidentTypeState extends State<AnonIncidentType> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
class _SelectIncidentTypePageState extends State<AnonIncidentType> {
  // Your implementation goes here

  void _goToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AnonReportDetails()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anonymous Reporting'),
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: Container(
      width: MediaQuery.of(context).size.width,  // Set Container width to screen width
      color: Colors.white,
          padding: EdgeInsets.all(8.0),
          child: StepperBar(currentStep: 1),
    
    ),
  ),
      ),
      body: Column(
        children: <Widget>[
          // Your incident type selection widget goes here
          ElevatedButton(
            onPressed: _goToNextPage,
            child: const Text('Next'),
          ),
        ],
      ),
    );
  }
}