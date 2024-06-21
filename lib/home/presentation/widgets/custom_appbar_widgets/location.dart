import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/core/utils/app_styles.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.location),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nasr City",
              style: AppStyles.styleRegular14(context)
                  .copyWith(color: ColorPallet.darkGray700),
            ),
            Text(
              "Cairo",
              style: AppStyles.styleBold14(context)
                  .copyWith(color: ColorPallet.darkGray700),
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        SvgPicture.asset(Assets.arrowDown),
      ],
    );
  }
}
