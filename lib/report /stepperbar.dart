import 'package:flutter/material.dart';

class StepperBar extends StatelessWidget {
  final int currentStep;

  const StepperBar({Key? key, required this.currentStep}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStep(1, 'Select Type', currentStep >= 1),
        _buildStep(2, 'Provide Details', currentStep >= 2),
        _buildStep(3, 'Confirm', currentStep >= 3),
      ],
      ),
    );
  }

  Widget _buildStep(int step, String title, bool isCompleted) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: isCompleted ? Colors.blue : Colors.grey,
          child: Text(step.toString()),
        ),
        Text(title),
      ],
    );
  }
}