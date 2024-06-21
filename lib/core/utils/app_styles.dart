import 'package:flutter/material.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular14(context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium14(BuildContext context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold22(BuildContext context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 22),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold20(BuildContext context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleBold14(BuildContext context) {
    return TextStyle(
      color: ColorPallet.mainBlack,
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Urbanist',
      fontWeight: FontWeight.w700,
    );
  }
}

// sacleFactor
// responsive font size
// (min , max) fontsize
double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
