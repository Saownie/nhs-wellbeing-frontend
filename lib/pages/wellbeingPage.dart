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
          const Card(
            child: Expanded(
              child: Column(
                children: [
                  Text(
                    'Staff Support Service line (you do not need managers referral to access this support):',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '020 8725 3368/4749',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    selectionColor: Color(0x005EB8),
                  )
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                'Wellbeing Categories',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              const SizedBox(
                height: 10,
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
