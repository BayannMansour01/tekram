import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/features/login_page/presentation/manager/cubit/login_cubit.dart';
import 'package:tekram/features/login_page/presentation/screens/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppConstants.whiteColor,
          body: LoginViewBody(),
        ),
      ),
    );
  }
}
