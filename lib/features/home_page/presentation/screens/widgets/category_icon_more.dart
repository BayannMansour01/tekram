import 'package:flutter/material.dart';

Widget categoryIconMore(String label) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.white,
          child: Center(
            child: Icon(
              Icons.arrow_back_ios,
              size: 15,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          label,
          style:
              TextStyle(fontSize: 12, fontWeight: FontWeight.w600, height: 1),
        ),
      ],
    ),
  );
}
