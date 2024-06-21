import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/core/utils/app_images.dart';

class OfferImagesSlider extends StatelessWidget {
  const OfferImagesSlider({
    super.key,
    this.onPageChanged,
  });
  final dynamic Function(int, CarouselPageChangedReason)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 600),
      child: CarouselSlider(
        options: CarouselOptions(
          onPageChanged: onPageChanged,
          autoPlay: true,
          enableInfiniteScroll: false,
          aspectRatio: 6 / 2,
          enlargeCenterPage: true,
        ),
        items: List.generate(
          3,
          (index) => Container(
            decoration: BoxDecoration(
                color: ColorPallet.mainBlack,
                borderRadius: BorderRadius.circular(8)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                Assets.blackFriday,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
