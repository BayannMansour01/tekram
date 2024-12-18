import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';

class ProductReviewSection extends StatelessWidget {
  const ProductReviewSection({
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
              'التقييم والمراجعات',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 33.73 / 18,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      children: List.generate(
                        5,
                        (index) => RatingBarRow(
                          starCount: 5 - index,
                          percentage: [0.8, 0.6, 0.4, 0.2, 0.1][index],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "4",
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: List.generate(
                          4,
                          (index) =>
                              Icon(Icons.star, color: Colors.amber, size: 20),
                        )..add(Icon(Icons.star_border, color: Colors.grey)),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "(300)",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  //
                ],
              ),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.grey.shade300),
            SingleChildScrollView(
              child: ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ReviewItem(
                    name: "Amane soso",
                    date: "1/12/3333",
                    review: "منتج انصح به بشدة",
                    rating: 4,
                  ),
                  Divider(color: Colors.grey.shade300),
                  ReviewItem(
                    name: "Amane soso",
                    date: "1/12/3333",
                    review: "انصح به جودة عالية",
                    rating: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String name;
  final String date;
  final String review;
  final int rating;

  ReviewItem({
    required this.name,
    required this.date,
    required this.review,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: AppConstants.blueColor3,
                child: Text(
                  "A",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                date,
                style: TextStyle(color: Colors.grey, fontSize: 12),
              ),
              SizedBox(height: 4),
              Row(
                children: List.generate(
                  rating,
                  (index) => Icon(Icons.star, color: Colors.amber, size: 16),
                ),
              ),
              SizedBox(height: 4),
              Text(
                review,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class RatingBarRow extends StatelessWidget {
  final int starCount;
  final double percentage;

  RatingBarRow({required this.starCount, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: LinearProgressIndicator(
              value: percentage,
              backgroundColor: Colors.grey.shade300,
              color: Colors.blue,
              minHeight: 12,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          starCount.toString(),
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(width: 4),
        Icon(Icons.star, color: Colors.amber, size: 16),
      ],
    );
  }
}
