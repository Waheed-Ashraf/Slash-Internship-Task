// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/use_cases/get_best_selling_use_case.dart';

part 'best_selling_state.dart';

class BestSellingCubit extends Cubit<BestSellingState> {
  final GetBestSellingProductsUseCase _bestSellingProductsUseCase;
  BestSellingCubit(this._bestSellingProductsUseCase)
      : super(BestSellingInitial());
  Future fitchbestSellingProducts() async {
    emit(BestSellingProductsLoading());
    List<Product> bestSellingProducts =
        await _bestSellingProductsUseCase.getBestSellingProductsUseCase();
    emit(BestSellingProductsLoaded(
        bestSellingProductsList: bestSellingProducts));
  }
}
