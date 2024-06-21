import 'package:get_it/get_it.dart';
import 'package:slash_test/home/data/repositories/products_repo_imp.dart';
import 'package:slash_test/home/domain/repositories/products_repo.dart';
import 'package:slash_test/home/domain/use_cases/get_best_selling_use_case.dart';
import 'package:slash_test/home/domain/use_cases/get_new_arrival_products_use_case.dart';
import 'package:slash_test/home/domain/use_cases/get_recommended_for_you_products_use_case.dart';
import 'package:slash_test/home/presentation/view_model/best_selling_cubit/best_selling_cubit.dart';
import 'package:slash_test/home/presentation/view_model/new_arrival/new_arrival_cubit.dart';
import 'package:slash_test/home/presentation/view_model/recommended_for_you/recommended_for_you_cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    /// Cubit

    sl.registerFactory(() => NewArrivalCubit(
          sl(),
        ));

    sl.registerFactory(() => RecommendedForYouCubit(
          sl(),
        ));
    sl.registerFactory(() => BestSellingCubit(
          sl(),
        ));

    /// Use Cases

    sl.registerLazySingleton(() => GetBestSellingProductsUseCase(
          productsRepo: sl(),
        ));

    sl.registerLazySingleton(() => GetNewArrivalProductsUseCase(
          productsRepo: sl(),
        ));

    sl.registerLazySingleton(() => GetRecommendedForYouProductsUseCase(
          productsRepo: sl(),
        ));

    /// Repository

    sl.registerLazySingleton<BaseProductsRepo>(() => ProductRepImp());
  }
}
