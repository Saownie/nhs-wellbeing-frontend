import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/wellbeingItem.dart';

class WellbeingCategory extends StatelessWidget {
  const WellbeingCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellbeing Category'),
      ),
      body: Center(
          child: ElevatedButton(
        child: Text('Stress management'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WellbeingItem()),
          );
        },
      )),
    );
  }
}
