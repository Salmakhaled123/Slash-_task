part of 'product_details_cubit.dart';

@immutable
abstract class ProductDetailsState {}

class ProductDetailsInitial extends ProductDetailsState {}

class ChangeIndexSuccessfully extends ProductDetailsState {}

class ChangeIndexOfSizeSuccessfully extends ProductDetailsState {}

class ChangeIndexOfMaterialSuccessfully extends ProductDetailsState {}
