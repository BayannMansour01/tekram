import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tekram/features/home_page/presentation/screens/home_page_view.dart';
import 'package:tekram/features/login_page/presentation/screens/login_screen.dart';
import 'package:tekram/features/product_page/presentation/screens/producr_page_view.dart';
import 'package:tekram/features/sign_in_page/presentation/screens/signin_view.dart';

abstract class AppRouter {
  static const kSigninView = '/SigninView';
  static const khomeView = '/homeView';
  static const kProductView = '/kProductView';

  static final router = GoRouter(
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) {
            return LoginView();
          }),
      GoRoute(
          path: kSigninView,
          builder: (context, state) {
            return SignInView();
          }),
      GoRoute(
          path: khomeView,
          builder: (context, state) {
            return HomePageView();
          }),
      GoRoute(
          path: kProductView,
          builder: (context, state) {
            return ProductPageView();
          })
    ],
  );
}
