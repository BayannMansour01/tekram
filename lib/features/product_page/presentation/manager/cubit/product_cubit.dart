import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(ProductInitial());

  String? selectedSize;

  int selectedtab = 0;
  Color? selectedColor;

  void selectSize(String size) {
    selectedSize = size;
    emit(
      SelectSizestate(),
    );
  }

  void selectTab(int tabindex) {
    selectedtab = tabindex;
    emit(
      SelectTabstate(),
    );
  }

  void selectColor(Color color) {
    selectedColor = color;
    emit(
      SelectColorState(),
    );
  }
}
