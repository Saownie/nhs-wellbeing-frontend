import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/models/wellbeingCategoryModel.dart';

class WellbeingPage extends StatelessWidget {
  WellbeingPage({super.key});

  List<WellbeingCategoryModel> wellbeingCategories = [];

  void _getWellbeingCategories() {
    wellbeingCategories = WellbeingCategoryModel.getWellbeingCategories();
  }

  @override
  Widget build(BuildContext context) {
    _getWellbeingCategories();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health & Wellbeing'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            color: Colors.white,
            child: Container(
              padding: EdgeInsets.only(
                  left: 15.0, top: 15.0, right: 10, bottom: 10.0),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(TextSpan(
                        text: 'Staff Support Service line ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                              text:
                                  '(you do not need managers referral to access this support):',
                              style: TextStyle(fontWeight: FontWeight.normal)),
                        ])),
                    Text(
                      '020 8725 3368/4749',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue.shade800),
                    )
                  ],
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding:
                    EdgeInsets.only(left: 10, top: 10, right: 7, bottom: 10),
                child: Text(
                  'Wellbeing Categories',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: wellbeingCategories.length,
                  itemBuilder: (context, index) {
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      wellbeingCategories[index]
                                          .categoryRoute));
                        },
                        child: Container(
                          child: Text(
                            textAlign: TextAlign.left,
                            wellbeingCategories[index].categoryName,
                          ),
                          padding: EdgeInsets.all(10.0),
                        ));
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
