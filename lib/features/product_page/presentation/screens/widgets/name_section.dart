import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/widgets/star.dart';

class NameSection extends StatelessWidget {
  const NameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConstants.whiteColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Vinland Saga Hoodies - Vinland Saga Harajuku Aesthetic Printed Hoodie',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 33.73 / 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '(300)4  ',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppConstants.white700,
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                    Star(
                      color: AppConstants.borderColor,
                    ),
                    Star(
                      color: AppConstants.yellow,
                    ),
                    Star(
                      color: AppConstants.yellow,
                    ),
                    Star(
                      color: AppConstants.yellow,
                    ),
                    Star(
                      color: AppConstants.yellow,
                    )
                  ],
                ),
                Image.asset(
                  'assets/images/Frame 112.png',
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      '300 ألف ل.س ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        height: 1,
                      ),
                    ),
                    Text(
                      '800 ألف ل.س ',
                      style: TextStyle(
                        fontSize: 14,
                        color: AppConstants.white700,
                        fontWeight: FontWeight.w400,
                        height: 1,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppConstants.white700,
                      ),
                    )
                  ],
                ),
                Container(
                  color: Color(0xffEFFBF5),
                  child: Text(
                    '   وفر %30   ',
                    style: TextStyle(color: Color(0xff1F7046)),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
