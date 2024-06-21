import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/home/presentation/view_model/recommended_for_you/recommended_for_you_cubit.dart';
import 'package:slash_test/home/presentation/widgets/product_item.dart';

class RecommendedForYouList extends StatelessWidget {
  const RecommendedForYouList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecommendedForYouCubit, RecommendedForYouState>(
      builder: (context, state) {
        if (state is RecommendedForYouLoaded) {
          return MediaQuery.of(context).size.width >= 900
              ? GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:
                        (MediaQuery.of(context).size.width / 300).round(),
                    childAspectRatio: 124 / 170,
                  ),
                  itemCount: state.recommendedForYouList.length,
                  itemBuilder: ((context, index) {
                    return ProductItem(
                        product: state.recommendedForYouList[index]);
                  }),
                )
              : SizedBox(
                  height: 170,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: state.recommendedForYouList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: index == 0
                              ? const EdgeInsets.only(left: 24, right: 12)
                              : const EdgeInsets.only(right: 12),
                          child: ProductItem(
                              product: state.recommendedForYouList[index]),
                        );
                      }),
                );
        } else {
          return const SizedBox(
            height: 170,
            child: Center(
              child: CircularProgressIndicator(
                color: ColorPallet.mainBlack,
              ),
            ),
          );
        }
      },
    );
  }
}
