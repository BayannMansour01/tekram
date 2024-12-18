import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  final String? text;
  final Color? textColor;
  final Color? color;
  final FontWeight? weight;
  final double? size;
  final String? icon;

  CustomButton(
      {super.key,
      this.textColor,
      this.onTap,
      this.size,
      this.text,
      this.weight,
      this.color,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 385,
      height: 44,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          backgroundColor: color,
          side: BorderSide(
              color: AppConstants.borderColor, width: 1), // Border style
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        child: Stack(
          alignment:
              Alignment.center, // Align children in the center of the button
          children: [
            Center(
              child: Text(
                '$text',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: size,
                    color: textColor,
                    fontWeight: weight,
                    height: 1),
              ),
            ),
            icon != null
                ? Positioned(
                    left: 0,
                    child: Image.asset(
                      '$icon',
                      width: 24,
                      height: 24,
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
