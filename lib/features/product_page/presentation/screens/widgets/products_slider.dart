import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductsSlider extends StatelessWidget {
  const ProductsSlider({
    super.key,
    required PageController pageController,
    required List<String> productImages,
  })  : _pageController = pageController,
        _productImages = productImages;

  final PageController _pageController;
  final List<String> _productImages;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 428,
          child: PageView.builder(
            controller: _pageController,
            itemCount: _productImages.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                child: Image.asset(
                  _productImages[index],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 16,
          left: 16,
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Container(
              child: Icon(
                Icons.arrow_forward,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          top: 14,
          right: 14,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              child: Icon(
                Icons.favorite_border_rounded,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 0,
          right: 0,
          child: Center(
            child: SmoothPageIndicator(
              controller: _pageController,
              count: _productImages.length,
              effect: WormEffect(
                activeDotColor: Colors.black,
                dotColor: Colors.grey.shade300,
                dotHeight: 8,
                dotWidth: 8,
                spacing: 6,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
