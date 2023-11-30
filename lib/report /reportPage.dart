// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/report%20/incidenttype.dart';

class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Reporting')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Reporting Bullying + Harassment',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ElevatedButton(
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(double.infinity, 50))), // this makes the button full width
                    child: Text("Report with Contact details"),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SelectIncidentTypePage (),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20), // Add some spacing between the buttons
                  ElevatedButton(
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(double.infinity, 50))), // this makes the button full width
                    child: Text("Report anonymously"),
                    onPressed: (){
                      // Add your onPressed code here
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}