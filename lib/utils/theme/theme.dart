import 'package:cartzy_ecommerce/utils/theme/chip_theme.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/appbar_theme.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/outline_button.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/text_theme.dart';
import 'package:cartzy_ecommerce/utils/theme/custom_themes/textfield_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme{
  //private constructor!!
  TAppTheme._();
  //LIGHT
  static ThemeData lightTheme=ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TTextTheme.LightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme:TAppBarTheme.lightAppBarTheme ,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckboxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButton.lightOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme
    
     
  );
  //DARK
  static ThemeData darkTheme=ThemeData(
     useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.DarkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckboxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButton.darkOutlineButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme
  );
}