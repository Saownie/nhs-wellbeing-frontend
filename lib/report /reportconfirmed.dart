import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/homepage.dart';
import 'package:wellbeingfrontend/report%20/stepperbar.dart';
class ConfirmationPage extends StatefulWidget {
  const ConfirmationPage({Key? key}) : super(key: key);

  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  void _goToHomePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
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
      child: StepperBar(currentStep: 3),
    ),
  ), 
      ),
      body: Column(
        children: <Widget>[
          const Text('Successfully reported'),
          ElevatedButton(
            onPressed: _goToHomePage,
            child: const Text('Go to Home'),
          ),
        ],
      ),
    );
  }
}