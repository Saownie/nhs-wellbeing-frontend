import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/wellbeingItem.dart';

class WellbeingItemsModel {
  String itemName;
  String itemDesc;
  Widget itemRoute;

  WellbeingItemsModel(
      {required this.itemName,
      required this.itemDesc,
      required this.itemRoute});

  static List<WellbeingItemsModel> getWellbeingItems() {
    List<WellbeingItemsModel> wellbeingItems = [];

    wellbeingItems.add(WellbeingItemsModel(
        itemName: 'Tips to reduce stress',
        itemDesc: 'Tips and tricks for maintaining a healthy lifestyle',
        itemRoute: WellbeingItem()));

    wellbeingItems.add(WellbeingItemsModel(
        itemName: 'Breathing execise',
        itemDesc: 'Learn to breathe correctly',
        itemRoute: WellbeingItem()));
    wellbeingItems.add(WellbeingItemsModel(
        itemName: 'Take time out',
        itemDesc: 'Find useful tips to spend quality time',
        itemRoute: WellbeingItem()));
    wellbeingItems.add(WellbeingItemsModel(
        itemName: 'Relaxion',
        itemDesc: 'Tips for the perfect relaxion',
        itemRoute: WellbeingItem()));

    return wellbeingItems;
  }
}
