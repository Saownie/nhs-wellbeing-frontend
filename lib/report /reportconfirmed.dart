import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/components/bottomNavbar.dart';
import 'package:wellbeingfrontend/report /stepperbar.dart';
class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  void _goToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => bottomNavBar()));
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmation'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Container(
            width: MediaQuery.of(context).size.width,  // Set Container width to screen width
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: StepperBar(currentStep: 3),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Padding around the text
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left side
          children: <Widget>[
            Text(
              'Thank you for Reporting. You are making our trust a safer place to work.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24), // Bold and larger text
            ),
            SizedBox(height: 20), // Space between paragraphs
            Text(
              'You will receive an email from HR soon regarding the next steps. In the meantime, please visit the Wellbeing page for any support you might need.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20), // Space before the button
            ElevatedButton(
              onPressed: _goToHomePage,
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }
}