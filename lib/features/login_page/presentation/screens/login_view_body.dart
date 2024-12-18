import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/utils/app_router.dart';
import 'package:tekram/core/widgets/custom_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, top: 51, left: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/tkr.png',
            width: 98,
            height: 46,
          ),
          SizedBox(
            height: 61,
          ),
          Container(
              child: Text(
            'خدماتك اصبحت  ',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.w900,
              height: 1,
            ),
          )),
          Container(
            child: Text(
              'عالمية .',
              style: TextStyle(
                  height: 1,
                  color: AppConstants.blueColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w900),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            width: 385,
            height: 44,
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(
                    color: AppConstants.borderColor, width: 1), // Border style
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
              ),
              child: Stack(
                alignment: Alignment
                    .center, // Align children in the center of the button
                children: [
                  Center(
                    // Centered Text
                    child: Text(
                      "انضم عبر غوغل بلاي",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    child: Image.asset(
                      'assets/images/google.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            textColor: Colors.black,
            size: 16,
            weight: FontWeight.w800,
            text: 'انضم الينا عبر بريدك الالكتروني',
            icon: 'assets/images/message.png',
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            'او',
            style:
                TextStyle(fontSize: 16, height: 1, fontWeight: FontWeight.w900),
          )),
          SizedBox(
            height: 10,
          ),
          CustomButton(
            text: 'اكمل ك ضيف',
            size: 16,
            weight: FontWeight.w800,
            textColor: AppConstants.borderColor,
            onTap: () {
              context.push(AppRouter.kSigninView);
            },
          ),
          Expanded(
            child: Image.asset(
              'assets/images/man.png',
              width: double.infinity, // ليأخذ عرض الشاشة بالكامل
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
