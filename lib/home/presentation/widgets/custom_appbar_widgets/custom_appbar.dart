import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/core/utils/app_styles.dart';
import 'package:slash_test/home/presentation/widgets/custom_appbar_widgets/location.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 1100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Slash.",
            style: AppStyles.styleBold20(context),
          ),
          const Location(),
          Stack(
            children: [
              SvgPicture.asset(Assets.notification),
              Positioned(
                right: 0,
                top: 3,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                      color: const Color(0xffC12222),
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: .5, color: const Color(0xffF8F8F8))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
