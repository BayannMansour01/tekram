import 'package:flutter/material.dart';

class BuildRow extends StatelessWidget {
  final Color? color;
  final String? text1;
  final String? text2;

  const BuildRow({
    super.key,
    this.color,
    this.text1,
    this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        // right: 10,
      ),
      child: Container(
        padding: EdgeInsets.all(8),
        color: color,
        child: Padding(
          padding: const EdgeInsets.only(left: 40, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$text1',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, height: 1),
              ),
              Text(
                '$text2',
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w600, height: 1),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
