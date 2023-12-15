import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
part 'product_details_state.dart';

class ProductDetailsCubit extends Cubit<ProductDetailsState> {
  ProductDetailsCubit() : super(ProductDetailsInitial());
  int currentPageIndex = 0;
  PageController pageController = PageController(initialPage: 0);
  int currentSizeIndex2 = -1;
  changeIndex(int index) {
    currentPageIndex = index;
    emit(ChangeIndexSuccessfully());
  }

  int currentMaterialIndex3 = -1;
  changeIndexOfSize(int index) {
    currentSizeIndex2 = index;

    emit(ChangeIndexOfSizeSuccessfully());
  }

  changeIndexOfMaterial(int index) {
    currentMaterialIndex3 = index;
    emit(ChangeIndexOfMaterialSuccessfully());
  }
}
