import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/wellbeingPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NHS Wellbeing App'),
      ),
      body: Container(
        child: ElevatedButton(
          child: Text('Health & Wellbeing'),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => WellbeingPage()));
          },
        ),
      ),
    );
  }
}
