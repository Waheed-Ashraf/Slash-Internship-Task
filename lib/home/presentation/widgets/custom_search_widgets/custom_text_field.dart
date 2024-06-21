import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/core/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    required this.text,
    this.controller,
  });

  final Function(String)? onChanged;
  final String text;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.styleRegular14(context).copyWith(
        color: ColorPallet.mainBlack,
      ),
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
          filled: true,
          fillColor: ColorPallet.backgraound2,
          hintText: text,
          hintStyle: AppStyles.styleRegular14(context).copyWith(
            color: ColorPallet.darkGray400,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none),
          prefixIcon: Padding(
            padding:
                const EdgeInsets.only(left: 18, right: 12, top: 12, bottom: 12),
            child: SvgPicture.asset(
              Assets.searchNormal,
            ),
          )),
    );
  }
}
