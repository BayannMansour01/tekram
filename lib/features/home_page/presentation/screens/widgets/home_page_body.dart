import 'package:flutter/material.dart';

Widget categoryIcon(String iconPath, String label) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconPath,
          width: 40,
          height: 40,
        ),
        SizedBox(height: 5),
        Text(
          label,
          style:
              TextStyle(fontSize: 15, fontWeight: FontWeight.w600, height: 1),
        ),
      ],
    ),
  );
}
