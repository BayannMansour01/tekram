import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/features/product_page/presentation/manager/cubit/product_cubit.dart';

class SizeWidget extends StatelessWidget {
  final String size;
  const SizeWidget({
    required this.size,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        ProductCubit cubit = BlocProvider.of<ProductCubit>(context);
        bool isSelected = cubit.selectedSize == size;

        return Padding(
          padding: const EdgeInsets.only(left: 8),
          child: InkWell(
            onTap: () {
              cubit.selectSize(size);
            },
            child: Container(
              width: 63,
              height: 59,
              decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected ? Colors.blue : Colors.grey.shade300,
                  width: isSelected ? 2 : 1,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  size,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: isSelected ? Colors.blue : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
