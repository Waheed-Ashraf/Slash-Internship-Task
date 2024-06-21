import 'package:flutter/material.dart';
import 'package:slash_test/core/services/service_locator.dart';
import 'package:slash_test/core/utils/app_constants.dart';
import 'package:slash_test/home/presentation/view_model/best_selling_cubit/best_selling_cubit.dart';
import 'package:slash_test/home/presentation/view_model/new_arrival/new_arrival_cubit.dart';
import 'package:slash_test/home/presentation/view_model/recommended_for_you/recommended_for_you_cubit.dart';
import 'package:slash_test/home/presentation/widgets/adaptive_layout_builder.dart';
import 'package:slash_test/home/presentation/widgets/desktop_layout.dart';
import 'package:slash_test/home/presentation/widgets/mobile_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              sl<BestSellingCubit>()..fitchbestSellingProducts(),
        ),
        BlocProvider(
          create: (context) => sl<NewArrivalCubit>()..fitchNewArrivalProducts(),
        ),
        BlocProvider(
          create: (context) =>
              sl<RecommendedForYouCubit>()..fitchRecommendedForYouProducts(),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          backgroundColor: ColorPallet.backgraound,
          body: AdaptiveLayout(
            mobileLayout: (context) => const MobileLayout(),
            desktopLayout: (context) => const DesktopLayout(),
          ),
        ),
      ),
    );
  }
}
