import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/utils/size_config.dart';
import 'package:tekram/core/widgets/star.dart';
import 'package:tekram/features/product_page/presentation/manager/cubit/product_cubit.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/add_to_cart_section.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/build_row.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/colors_section.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/description_section.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/name_section.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/product_review_section.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/products_slider.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/sizes_section.dart';

class ProductPageBody extends StatelessWidget {
  ProductPageBody({super.key});
  final PageController _pageController = PageController();

  final List<String> _productImages = [
    'assets/images/productImage1.png',
    'assets/images/productImage2.png',
    'assets/images/productImage3.png',
    'assets/images/productImage4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstants.white500,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProductsSlider(
                pageController: _pageController, productImages: _productImages),
            NameSection(),
            SizedBox(
              height: 20,
            ),
            SizesSection(),
            SizedBox(
              height: 20,
            ),
            ColorsSection(),
            SizedBox(
              height: 20,
            ),
            DescriptionSection(),
            SizedBox(
              height: 20,
            ),
            ProductReviewSection(),
            SizedBox(
              height: 10,
            ),
            AddToCartSection(),
          ],
        ),
      ),
    );
  }
}
