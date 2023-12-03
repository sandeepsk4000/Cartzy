    import 'package:cartzy_ecommerce/features/authentication/screens/onboarding_screens/onboarding.dart';
import 'package:cartzy_ecommerce/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),

      
      
      
    );
  }
}