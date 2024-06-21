import 'package:flutter/material.dart';
import 'package:slash_test/home/presentation/widgets/custom_slider_widgets/dots_indicator_list.dart';
import 'package:slash_test/home/presentation/widgets/custom_slider_widgets/offer_images_slider.dart';

class OffersSection extends StatefulWidget {
  const OffersSection({super.key});

  @override
  State<OffersSection> createState() => _OffersSectionState();
}

class _OffersSectionState extends State<OffersSection> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OfferImagesSlider(
          onPageChanged: (index, p1) {
            setState(() {
              currentPageIndex = index;
            });
          },
        ),
        const SizedBox(
          height: 14,
        ),
        DotsIndicator(
          currentPageIndex: currentPageIndex,
        ),
      ],
    );
  }
}
