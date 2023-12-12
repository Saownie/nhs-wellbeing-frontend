import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/models/homeModel.dart';
import 'package:wellbeingfrontend/models/wellbeingItemsModel.dart';
import 'package:wellbeingfrontend/pages/wellbeingItem.dart';

class WellbeingCategory extends StatelessWidget {
  WellbeingCategory({super.key});

  List<WellbeingItemsModel> wellbeingItems = [];

  void _getWellbeingItems() {
    wellbeingItems = WellbeingItemsModel.getWellbeingItems();
  }

  @override
  Widget build(BuildContext context) {
    _getWellbeingItems();
    return Scaffold(
        appBar: AppBar(
          title: Text('Wellbeing Category'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(left: 15, top: 15, right: 10, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Explore Stress Mangement',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ApptextButton(
                    onTap: () {},
                    text: 'Subscribe to this category',
                    bgcolor: Colors.grey.shade100.withOpacity(0.7),
                    txtcolor: Colors.black,
                    bordercolor: Colors.grey.shade300,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 250,
              child: ListView.builder(
                itemCount: wellbeingItems.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    wellbeingItems[index].itemRoute));
                      },
                      child: Container(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                wellbeingItems[index].itemName,
                              ),
                            ]),
                        padding: EdgeInsets.all(10.0),
                      ));
                },
              ),
            )
          ],
        ));
  }
}
