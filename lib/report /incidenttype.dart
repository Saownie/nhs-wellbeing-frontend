// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/homepage.dart';
import 'package:wellbeingfrontend/report%20/stepperbar.dart';
import 'package:wellbeingfrontend/report%20/victimdetails.dart';

class SelectIncidentTypePage extends StatefulWidget {
  const SelectIncidentTypePage({Key? key}) : super(key: key);

  @override
  _SelectIncidentTypePageState createState() => _SelectIncidentTypePageState();
}

class _SelectIncidentTypePageState extends State<SelectIncidentTypePage> {
  // Your implementation goes here

  void _goToNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProvideDetailsPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select Incident Type'),
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