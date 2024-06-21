import 'package:flutter/cupertino.dart';
import 'package:slash_test/home/presentation/widgets/custom_header.dart';
import 'package:slash_test/home/presentation/widgets/recommended_for_you_widgets/recommended_for_you_list.dart';

class RecommendedForYouSection extends StatelessWidget {
  const RecommendedForYouSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: CustomHeader(headerTitle: "Recommended For You"),
        ),
        SizedBox(
          height: 16,
        ),
        RecommendedForYouList(),
      ],
    );
  }
}
