import 'package:flutter/material.dart';
import 'package:flutter_t_store_app/utils/theme/custom_themes/appbar_theme.dart';
import 'package:flutter_t_store_app/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_t_store_app/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:flutter_t_store_app/utils/theme/custom_themes/chip_theme.dart';
import 'package:flutter_t_store_app/utils/theme/custom_themes/text_form_field_theme.dart';
import 'package:flutter_t_store_app/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/elevated_button_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme:TAppBarTheme.lightAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      checkboxTheme:TCheckBoxTheme.lightCheckBoxTheme,
      chipTheme:TChipTheme.lightChipTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      checkboxTheme:TCheckBoxTheme.darkCheckBoxTheme,
      chipTheme:TChipTheme.darkChipTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
  );
}
