import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/use_cases/get_recommended_for_you_products_use_case.dart';

part 'recommended_for_you_state.dart';

class RecommendedForYouCubit extends Cubit<RecommendedForYouState> {
  final GetRecommendedForYouProductsUseCase _recommendedForYouProductsUseCase;
  RecommendedForYouCubit(this._recommendedForYouProductsUseCase)
      : super(RecommendedForYouInitial());
  Future fitchRecommendedForYouProducts() async {
    emit(RecommendedForYouLoading());
    List<Product> recommendedForYouList =
        await _recommendedForYouProductsUseCase
            .getRecommendedForYouProductsUseCase();
    emit(RecommendedForYouLoaded(recommendedForYouList: recommendedForYouList));
  }
}
