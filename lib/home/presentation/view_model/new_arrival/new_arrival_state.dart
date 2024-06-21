part of 'new_arrival_cubit.dart';

@immutable
sealed class NewArrivalState {}

final class NewArrivalInitial extends NewArrivalState {}

final class NewArrivalLoading extends NewArrivalState {}

final class NewArrivalLoaded extends NewArrivalState {
  final List<Product> newArrivalProductsList;

  NewArrivalLoaded({required this.newArrivalProductsList});
}
