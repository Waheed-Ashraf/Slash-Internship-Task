part of 'recommended_for_you_cubit.dart';

@immutable
sealed class RecommendedForYouState {}

final class RecommendedForYouInitial extends RecommendedForYouState {}

final class RecommendedForYouLoading extends RecommendedForYouState {}

final class RecommendedForYouLoaded extends RecommendedForYouState {
  final List<Product> recommendedForYouList;

  RecommendedForYouLoaded({required this.recommendedForYouList});
}
