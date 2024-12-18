import 'package:flutter/material.dart';
import 'package:tekram/core/constants.dart';

class Offer extends StatelessWidget {
  const Offer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Image.asset(
            'assets/images/Frame 61376.png',
            height: 78,
            width: 384,
          ),
          Positioned(
            child: Text(
              'NOW    50%',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppConstants.whiteColor,
              ),
            ),
            bottom: 30,
            top: 30,
            right: 250,
            left: 20,
          ),
          Positioned(
            child: Text(
              'OFF',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppConstants.whiteColor,
              ),
            ),
            bottom: 30,
            top: 30,
            right: 50,
            left: 200,
          )
        ],
      ),
    );
  }
}
