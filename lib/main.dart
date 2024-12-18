import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tekram/core/constants.dart';
import 'package:tekram/core/utils/app_router.dart';
import 'package:tekram/core/utils/size_config.dart';
import 'package:tekram/features/login_page/presentation/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const Tekram());
}

class Tekram extends StatelessWidget {
  const Tekram({super.key});
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: AppConstants.blueColor,
        textTheme:
            GoogleFonts.cairoTextTheme(Theme.of(context).textTheme.copyWith())
                .apply(
          bodyColor: Colors.black,
        ),
      ),
      routerConfig: AppRouter.router,
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: child!,
        );
      },
    );
  }
}
