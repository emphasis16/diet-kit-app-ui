import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategory() {
    String iconPath = 'assets/icons/';
    List<CategoryModel> categories = [];
    List<String> name = ['Salad', 'Cake', 'Pie', 'Smoothies'];
    List<String> iconPathItem = ['plate', 'pancakes', 'pie', 'orange-snacks'];
    List<Color> boxColor = [
      const Color(0xff92A3FD),
      const Color(0xffC58BF2),
      const Color(0xff92A3FD),
      const Color(0xffC58BF2),
    ];

    for (var i = 0; i < name.length; i++) {
      categories.add(
        CategoryModel(
          name: name[i],
          iconPath: '$iconPath${iconPathItem[i]}.svg',
          boxColor: boxColor[i],
        ),
      );
    }

    return categories;
  }
}
