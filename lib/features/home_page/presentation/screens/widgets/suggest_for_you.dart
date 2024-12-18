import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/features/home_page/presentation/screens/home_page_body.dart';
import 'package:tekram/features/home_page/presentation/screens/widgets/product_item.dart';

class SuggestForYou extends StatelessWidget {
  const SuggestForYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'مقترحة لك',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
              ),
              Row(children: [
                Text(
                  '  عرض الكل',
                  style: TextStyle(
                      color: AppConstants.blueColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: AppConstants.blueColor,
                )
              ]),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 21),
          child: SizedBox(
            height: 270,
            child: ListView.builder(
              reverse: true,
              controller: ScrollController(initialScrollOffset: 1),
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return ProductItem(
                  width: 160,
                  height: 260,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
