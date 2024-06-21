import 'package:flutter/material.dart';
import 'package:slash_test/home/presentation/widgets/categories_widgets/categories_list.dart';
import 'package:slash_test/home/presentation/widgets/custom_header.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomHeader(headerTitle: "Categories"),
        ),
        SizedBox(
          height: 16,
        ),
        CategoriesList(),
      ],
    );
  }
}
