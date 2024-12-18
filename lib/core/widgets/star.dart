import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';

class Star extends StatelessWidget {
  final Color? color;
  const Star({super.key, this.color = Colors.yellow});

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star_rate_sharp,
      size: 18,
      color: color,
    );
  }
}
