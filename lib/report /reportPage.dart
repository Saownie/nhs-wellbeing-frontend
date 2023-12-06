// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/report%20/anonincidenttype.dart';
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
              'Reporting Bullying + Harassment Support',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15),
            Text('At St Georges University Hospital,we take bullying and harrassment very seriously. We have a zero tolerance policy towards bullying and harrassment. We encourage you to report any incidents of bullying & harrassment that you have experienced or witnessed.',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.justify,
            ),
            SizedBox(height: 15),
            Text(
              'If you choose to report anonymously, we do not ask for your personal information and the result of the case will be published in our website. Otherwise, you will receive email about the investigation outcome. Please use the buttons below to report.',
            style: TextStyle(fontSize: 15),
            textAlign: TextAlign.justify,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AnonIncidentType (),
                        ),
                      );
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