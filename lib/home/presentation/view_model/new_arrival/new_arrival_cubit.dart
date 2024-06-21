import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slash_test/home/domain/entities/products.dart';
import 'package:slash_test/home/domain/use_cases/get_new_arrival_products_use_case.dart';

part 'new_arrival_state.dart';

class NewArrivalCubit extends Cubit<NewArrivalState> {
  final GetNewArrivalProductsUseCase _getNewArrivalProductsUseCase;
  NewArrivalCubit(this._getNewArrivalProductsUseCase)
      : super(NewArrivalInitial());

  Future fitchNewArrivalProducts() async {
    emit(NewArrivalLoading());
    List<Product> newArrivalProductsList =
        await _getNewArrivalProductsUseCase.getNewArrivalProductsUseCase();
    emit(NewArrivalLoaded(newArrivalProductsList: newArrivalProductsList));
  }
}
