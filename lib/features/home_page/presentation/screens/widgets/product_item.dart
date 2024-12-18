import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/utils/app_router.dart';

class ProductItem extends StatelessWidget {
  final double width;
  final double height;

  const ProductItem({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRouter.kProductView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/image 6 (1).png',
                    width: width,
                    height: height * 0.55,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'هو دي كبيرة سادة مع صورة من اختيارك يا حلو يhhا',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        height: 1.5,
                        color: Colors.black,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      '300 ألف',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 12,
                        height: 1,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 8.0, vertical: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: AppConstants.borderColor,
                              width: 1,
                            ),
                          ),
                          child: Text(
                            'السباعي للعطور',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                              color: AppConstants.white700,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '(300)',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: AppConstants.white700,
                              ),
                            ),
                            Text(
                              '  5.0 ',
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: AppConstants.yellow,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: AppConstants.yellow,
                              size: 12,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              left: 8,
              top: 8,
              child: Container(
                padding: EdgeInsets.all(4),
                child: Icon(
                  Icons.favorite_border_rounded,
                  size: 25,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
