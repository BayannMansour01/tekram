import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/features/sign_in_page/presentation/manager/cubit/signin_cubit.dart';
import 'package:tekram/features/sign_in_page/presentation/screens/signin_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppConstants.whiteColor,
          body: SignInBody(),
        ),
      ),
    );
  }
}
