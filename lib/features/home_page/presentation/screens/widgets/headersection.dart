import 'package:flutter/material.dart';

class headersection extends StatelessWidget {
  const headersection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/notification.png'),
          Image.asset(
            'assets/images/tkrWhite.png',
          ),
        ],
      ),
    );
  }
}
