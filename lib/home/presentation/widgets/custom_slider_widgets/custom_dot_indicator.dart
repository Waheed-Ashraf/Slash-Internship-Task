import 'package:flutter/material.dart';
import 'package:slash_test/core/utils/app_constants.dart';

class CustomDotIndicator extends StatelessWidget {
  const CustomDotIndicator({super.key, required this.isActive});

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      width: isActive ? 14 : 7,
      height: 7,
      decoration: ShapeDecoration(
        color: isActive ? ColorPallet.mainBlack : ColorPallet.darkGray300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
