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
  String selectedType = 'Bullying';

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
      body: ListView(
        children: <Widget>[
          RadioListTile<String>(
            title: const Text('Bullying'),
            subtitle: const Text('Bullying is when someone behaves in a way that is hurtful, offensive, or intimidating, intending to undermine, humiliate, or harm another person. It can be done by an individual or a group and may be obvious or subtle.'),
            value: 'Bullying',
            groupValue: selectedType,
            onChanged: (String? value) {
              setState(() {
                selectedType = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Harassment'),
            subtitle: const Text('Unwanted behavior related to a protected characteristic, like race or gender, that either violates a persons dignity or creates an environment that is hostile or offensive. It can be a single act or a series of behaviors.'),
            value: 'Harassment',
            groupValue: selectedType,
            onChanged: (String? value) {
              setState(() {
                selectedType = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Victimisation'),
            subtitle: const Text('Being treated unfairly because someone has made or intends to make a complaint about discrimination or harassment. It also applies if someone is treated less favorably for supporting another person who raised a complaint.'),
            value: 'Victimisation',
            groupValue: selectedType,
            onChanged: (String? value) {
              setState(() {
                selectedType = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Discrimination by Association'),
            subtitle: const Text('A person is treated unfairly because of their association with someone who has a protected characteristic.'),
            value: 'Discrimination by Association',
            groupValue: selectedType,
            onChanged: (String? value) {
              setState(() {
                selectedType = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Discrimination by Perception'),
            subtitle: const Text('You are treated unfairly based on the discriminators perception of a protected characteristic. For instance, discriminating against a person who looks younger than their actual age.'),
            value: 'Discrimination by Perception',
            groupValue: selectedType,
            onChanged: (String? value) {
              setState(() {
                selectedType = value!;
              });
            },
          ),
          // Your incident type selection widget goes here
          Center(
  child: Container(
    width: 200, // You can adjust this value to suit your needs
    child: ElevatedButton(
      onPressed: _goToNextPage,
      child: const Text('Continue to Report Details'),
    ),
  ),
),
        ],
      ),
      );
    
  }
}