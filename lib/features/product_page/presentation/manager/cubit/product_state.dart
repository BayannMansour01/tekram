part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}

final class SelectSizestate extends ProductState {}

final class SelectColorState extends ProductState {}

final class SelectTabstate extends ProductState {}
