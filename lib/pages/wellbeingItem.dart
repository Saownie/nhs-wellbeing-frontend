import 'package:flutter/material.dart';

class WellbeingItem extends StatelessWidget {
  const WellbeingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellbeing Item'),
      ),
      body: Center(
        child: Text('Stress management'),
      ),
    );
  }
}
