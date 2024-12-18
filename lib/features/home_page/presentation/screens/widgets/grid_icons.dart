import 'package:flutter/material.dart';
import 'package:tekram/features/home_page/presentation/screens/home_page_body.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/category_icon_more.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/home_page_body.dart';

class gridIcons extends StatelessWidget {
  const gridIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      mainAxisSpacing: 22,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 6,
      children: [
        categoryIcon('assets/images/Ellipse 36 (1).png', 'BEATS'),
        categoryIcon('assets/images/Ellipse 36 (2).png', 'GoPro'),
        categoryIcon('assets/images/Ellipse 36 (3).png', 'Dyson'),
        categoryIcon('assets/images/Ellipse 36 (4).png', 'NASA'),
        categoryIcon('assets/images/Ellipse 36 (5).png', 'BMW'),
        categoryIcon('assets/images/Ellipse 36 (6).png', 'DELL'),
        categoryIconMore('كل المحال'),
        categoryIcon('assets/images/Ellipse 36 (7).png', 'DOMI'),
        categoryIcon('assets/images/Ellipse 36 (8).png', 'NASA'),
        categoryIcon('assets/images/Ellipse 36 (9).png', 'BMW'),
        categoryIcon('assets/images/Ellipse 36 (6).png', 'DELL'),
        categoryIcon('assets/images/Ellipse 36 (7).png', 'DOMI'),
      ],
    );
  }
}
