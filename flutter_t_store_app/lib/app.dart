import 'package:flutter/material.dart';
import 'package:flutter_t_store_app/features/authontication/screens/onboarding.dart';
import 'package:flutter_t_store_app/utils/theme/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        themeMode: ThemeMode.system,
        theme: TAppTheme.lightTheme,
        darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}