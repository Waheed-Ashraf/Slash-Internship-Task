import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_test/home/presentation/widgets/best_selling_widgets/best_slelling_list.dart';

import 'package:slash_test/home/presentation/widgets/custom_header.dart';

class BestSellingProductsSection extends StatelessWidget {
  const BestSellingProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomHeader(headerTitle: "Best Selling"),
        ),
        SizedBox(
          height: 16,
        ),
        BestSellingList(),
      ],
    );
  }
}
