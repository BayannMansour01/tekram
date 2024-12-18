import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/features/product_page/presentation/manager/cubit/product_cubit.dart';

class ColorWidget extends StatelessWidget {
  final Color? color;

  ColorWidget({
    this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductCubit, ProductState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        ProductCubit cubit = BlocProvider.of<ProductCubit>(context);
        bool isSelected = cubit.selectedColor == color;

        return Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {
              cubit.selectColor(color!);
            },
            child: Container(
              width: 63,
              height: 59,
              decoration: BoxDecoration(
                color: color,
                border: Border.all(
                  color: isSelected ? Colors.blue : Colors.grey.shade300,
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        );
      },
    );
  }
}
