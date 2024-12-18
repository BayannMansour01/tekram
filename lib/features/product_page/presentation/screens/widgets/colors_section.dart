import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/features/product_page/presentation/screens/product_page_body.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/color_widget.dart';

class ColorsSection extends StatelessWidget {
  const ColorsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'الألوان',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 33.73 / 18,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                ColorWidget(
                  color: AppConstants.whiteColor,
                ),
                ColorWidget(
                  color: Colors.black,
                ),
                ColorWidget(color: Color(0xffDE232A)),
                ColorWidget(
                  color: Color(0xff303146),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
