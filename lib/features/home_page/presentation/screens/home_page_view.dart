import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tekram/features/home_page/presentation/manager/cubit/homepage_cubit.dart';
import 'package:tekram/features/home_page/presentation/screens/home_page_body.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomepageCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: HomePageBody(),
        ),
      ),
    );
  }
}
