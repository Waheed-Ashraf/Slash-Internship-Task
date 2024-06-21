import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_styles.dart';
import 'package:slash_test/home/presentation/models/categories_model.dart';

class CategoriesItem extends StatelessWidget {
  final CategoriesModel categoriesModel;
  const CategoriesItem({super.key, required this.categoriesModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: ColorPallet.mainBlack,
            ),
            child: Center(
              child: SvgPicture.asset(
                categoriesModel.categorieImage,
              ),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            categoriesModel.categorieName,
            style: AppStyles.styleRegular14(context),
          ),
        ],
      ),
    );
  }
}
