import 'package:flutter/material.dart';
import 'package:wellbeingfrontend/pages/wellbeingCategory.dart';

class WellbeingCategoryModel {
  String categoryName;
  Widget categoryRoute;

  WellbeingCategoryModel(
      {required this.categoryName, required this.categoryRoute});

  static List<WellbeingCategoryModel> getWellbeingCategories() {
    List<WellbeingCategoryModel> wellbeingCategories = [];

    wellbeingCategories.add(WellbeingCategoryModel(
        categoryName: 'Support services', categoryRoute: WellbeingCategory()));

    wellbeingCategories.add(WellbeingCategoryModel(
        categoryName: 'Stress Management', categoryRoute: WellbeingCategory()));
    wellbeingCategories.add(WellbeingCategoryModel(
        categoryName: 'Emotional wellbeing',
        categoryRoute: WellbeingCategory()));

    return wellbeingCategories;
  }
}
