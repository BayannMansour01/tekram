import 'package:flutter/material.dart';
import 'package:tekram/features/product_page/presentation/screens/product_page_body.dart';
import 'package:tekram/features/product_page/presentation/screens/widgets/size_widget.dart';

class SizesSection extends StatelessWidget {
  const SizesSection({
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
              'المقاس',
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
                SizeWidget(
                  size: 'M',
                ),
                SizeWidget(
                  size: 'L',
                ),
                SizeWidget(
                  size: 'S',
                ),
                SizeWidget(
                  size: 'XL',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
