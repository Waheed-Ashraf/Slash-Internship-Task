import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/core/utils/app_styles.dart';

class CustomHeader extends StatelessWidget {
  final String headerTitle;

  const CustomHeader({super.key, required this.headerTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          headerTitle,
          style: AppStyles.styleSemiBold22(context),
        ),
        const Spacer(),
        Text(
          "See all",
          style: AppStyles.styleMedium14(context),
        ),
        const SizedBox(
          width: 10,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: ColorPallet.gray300),
            child: SvgPicture.asset(
              Assets.arrowRight,
              width: 15.56,
              height: 15.56,
            ),
          ),
        ),
      ],
    );
  }
}
