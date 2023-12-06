import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/report%20/reportconfirmed.dart';
import 'package:wellbeingfrontend/report%20/stepperbar.dart';
class ProvideDetailsPage extends StatefulWidget {
  const ProvideDetailsPage({Key? key}) : super(key: key);

  @override
  _ProvideDetailsPageState createState() => _ProvideDetailsPageState();
}

class _ProvideDetailsPageState extends State<ProvideDetailsPage> {
  // Your implementation goes here

final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _descriptionController = TextEditingController();
  String _severityLevel = 'Mild';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provide Details'),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            child: StepperBar(currentStep: 2),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!value.contains('@')) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Incident Description'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please describe the incident';
                  }
                  return null;
                },
              ),
              DropdownButtonFormField(
                value: _severityLevel,
                items: ['Mild', 'Moderate', 'Severe']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _severityLevel = value.toString();
                  });
                },
                decoration: InputDecoration(labelText: 'Severity Level'),
              ),
              ElevatedButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      // Process data here

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ConfirmationPage()
        ),
      );
    }
  },
  child: Text('Submit'),
),
            ],
          ),
        ),
      ),
    );
  }
}