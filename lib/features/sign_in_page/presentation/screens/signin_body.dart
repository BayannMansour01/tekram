import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/utils/app_router.dart';
import 'package:tekram/core/widgets/custom_button.dart';
import 'package:tekram/core/widgets/custom_text_field.dart';

class SignInBody extends StatelessWidget {
  SignInBody({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController numController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 20, top: 51, left: 16),
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
                width: 326,
                height: 90,
                child: Text(
                  'مرحبا في تكرم قم بتسجيل الدخول. ',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    height: 1.8,
                  ),
                )),
            SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: numController,
                    hint: "الرقم الشخصي",
                    label: "الرقم الشخصي",
                  ),
                  CustomTextField(
                    controller: _emailController,
                    hint: "البريد الالكتروني",
                    label: "البريد الالكتروني",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter an email';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  CustomTextField(
                    controller: passController,
                    hint: "كلمة السر",
                    label: "كلمة السر",
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'تذكرني   ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff7D7C7C),
                          height: 1,
                        ),
                      ),
                      SizedBox(height: 19),
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Color(0xffA7A6A6),
                        size: 16,
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  CustomButton(
                    color: AppConstants.blueColor,
                    textColor: AppConstants.whiteColor,
                    text: 'التالي',
                    size: 16,
                    weight: FontWeight.w600,
                    onTap: () {
                      // if (_formKey.currentState!.validate()) {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text('Processing Data')),
                      //   );
                      // }
                      context.push(AppRouter.khomeView);
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'ليس لديك حساب ؟ ',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 300,
                      ),
                      Text(
                        'قم بإنشاء حساب',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            height: 1,
                            color: AppConstants.blueColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
