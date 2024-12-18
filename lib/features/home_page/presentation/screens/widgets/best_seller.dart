import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/widgets/star.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({
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
                'الأكثر مبيعاً',
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
            height: 350,
            child: ListView.builder(
              reverse: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/image 3.png',
                              height: 170,
                              width: 218,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'شاشة تريفيو 24 بوصة سمارت بوكس هاي دفنشن كلرز',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  height: 1),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Row(
                              children: [
                                Text(
                                  '300 ألف ل.س',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14,
                                      height: 1),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '800 ألف ل.س',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      decoration: TextDecoration.lineThrough,
                                      height: 1,
                                      color: AppConstants.white700),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '(300) 4',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      height: 2,
                                      color: AppConstants.white700),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Star(
                                  color: AppConstants.white700,
                                ),
                                SizedBox(width: 3),
                                Star(
                                  color: AppConstants.yellow,
                                ),
                                SizedBox(width: 3),
                                Star(
                                  color: AppConstants.yellow,
                                ),
                                SizedBox(width: 3),
                                Star(
                                  color: AppConstants.yellow,
                                ),
                                SizedBox(width: 3),
                                Star(
                                  color: AppConstants.yellow,
                                ),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'وفر  100 الف ل س (30%)',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      height: 2,
                                      color: AppConstants.blueColor2),
                                ),
                                Image.asset('assets/images/Frame 112.png')
                              ],
                            )
                          ],
                        ),
                      ),
                      color: Colors.white,
                      width: 342,
                      height: 343,
                    ));
              },
            ),
          ),
        ),
      ],
    );
  }
}
