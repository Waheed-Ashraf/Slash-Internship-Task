import 'package:flutter/material.dart';

import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/home/presentation/models/categories_model.dart';
import 'package:slash_test/home/presentation/widgets/categories_widgets/categories_item.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  static List<CategoriesModel> categoriesData = [
    CategoriesModel(categorieName: "Fashion", categorieImage: Assets.shirt),
    CategoriesModel(categorieName: "Games", categorieImage: Assets.dice),
    CategoriesModel(
        categorieName: "Accessories", categorieImage: Assets.glasses),
    CategoriesModel(categorieName: "Books", categorieImage: Assets.bookBlank),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: categoriesData.asMap().entries.map((e) {
            var item = e.value;
            return CategoriesItem(
              categoriesModel: item,
            );
          }).toList(),
        ),
      ),
    );
  }
}
