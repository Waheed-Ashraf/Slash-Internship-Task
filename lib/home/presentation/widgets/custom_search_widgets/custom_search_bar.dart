import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_images.dart';
import 'package:slash_test/home/presentation/widgets/custom_search_widgets/custom_text_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 800),
      child: Row(
        children: [
          const Expanded(child: CustomTextField(text: "Search here ")),
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: ColorPallet.backgraound2,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: SvgPicture.asset(Assets.searchFilter),
            ),
          ),
        ],
      ),
    );
  }
}
