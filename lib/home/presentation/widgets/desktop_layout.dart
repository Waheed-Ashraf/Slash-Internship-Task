import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/home/presentation/widgets/best_selling_widgets/best_selling_section.dart';
import 'package:slash_test/home/presentation/widgets/categories_widgets/categories_section.dart';
import 'package:slash_test/home/presentation/widgets/custom_appbar_widgets/custom_appbar.dart';
import 'package:slash_test/home/presentation/widgets/custom_search_widgets/custom_search_bar.dart';
import 'package:slash_test/home/presentation/widgets/custom_slider_widgets/offers_section.dart';
import 'package:slash_test/home/presentation/widgets/new_arrival_widgets/new_arrival_section.dart';
import 'package:slash_test/home/presentation/widgets/recommended_for_you_widgets/recommended_for_you_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: CustomAppBar(),
            ),
            SizedBox(
              height: 24,
            ),
            OffersSection(),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: CustomSearchBar(),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      CategoriesSection(),
                      SizedBox(
                        height: 24,
                      ),
                      NewArrivalSection(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    children: [
                      BestSellingProductsSection(),
                      Divider(
                        color: ColorPallet.darkGray700,
                      ),
                      RecommendedForYouSection(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
