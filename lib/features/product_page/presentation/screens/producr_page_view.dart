import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/features/product_page/presentation/manager/cubit/product_cubit.dart';
import 'package:tekram/features/product_page/presentation/screens/product_page_body.dart';

class ProductPageView extends StatelessWidget {
  const ProductPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: SafeArea(
        child: Scaffold(
          body: ProductPageBody(),
        ),
      ),
    );
  }
}
