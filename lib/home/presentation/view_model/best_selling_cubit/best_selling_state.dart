part of 'best_selling_cubit.dart';

@immutable
sealed class BestSellingState {}

final class BestSellingInitial extends BestSellingState {}

final class BestSellingProductsLoading extends BestSellingState {}

final class BestSellingProductsLoaded extends BestSellingState {
  final List<Product> bestSellingProductsList;

  BestSellingProductsLoaded({required this.bestSellingProductsList});
}
