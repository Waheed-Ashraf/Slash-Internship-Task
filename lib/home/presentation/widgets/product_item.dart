import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/core/utils/app_styles.dart';
import 'package:slash_test/home/domain/entities/products.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeIn(
          duration: const Duration(milliseconds: 500),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Stack(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      width: 124,
                      height: 116,
                      product.image,
                      fit: BoxFit.cover,
                    )),
                Positioned(
                  right: 6,
                  top: 6,
                  child: Container(
                    width: 26,
                    height: 26,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorPallet.gray100,
                    ),
                    child: Center(child: SvgPicture.asset(Assets.heart)),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            product.name,
            style: AppStyles.styleRegular16(context),
          ),
        ),
        SizedBox(
          width: 124,
          child: Row(
            children: [
              Text(
                "EGP  ${product.price}",
                style: AppStyles.styleBold16(context),
              ),
              const Spacer(),
              Image.asset(
                Assets.profile1,
                width: 22,
                height: 22,
                fit: BoxFit.cover,
              ),
              const Flexible(
                  child: SizedBox(
                width: 8,
              )),
              Container(
                width: 22,
                height: 22,
                decoration: const BoxDecoration(
                  color: ColorPallet.mainBlack,
                  shape: BoxShape.circle,
                ),
                child: Center(child: SvgPicture.asset(Assets.add)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
