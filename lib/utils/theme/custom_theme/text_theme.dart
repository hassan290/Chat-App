import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TTextAppTheme {
  TTextAppTheme._();

  static TextTheme appTextTheme = TextTheme(
    headlineLarge: const TextStyle(fontFamily: 'Ubuntu').copyWith(fontSize: 24,fontWeight: FontWeight.w400,color: TColors.textColor),
    bodyMedium: const TextStyle(fontFamily: 'Ubuntu').copyWith(fontSize: 16,fontWeight: FontWeight.w400,color: TColors.textColor),
    displayLarge: const TextStyle(fontFamily: 'Ubuntu').copyWith(fontSize: 18,fontWeight: FontWeight.w500,color: TColors.textColor),
    displayMedium: const TextStyle(fontFamily: 'Ubuntu').copyWith(fontSize: 14,color: TColors.textColor),
    displaySmall: const TextStyle(fontFamily: 'Ubuntu').copyWith(fontSize: 12,fontWeight: FontWeight.w300,color: TColors.textColor),
    labelSmall: const TextStyle(fontStyle: FontStyle.italic,fontFamily: 'Ubuntu').copyWith(fontSize: 13,fontWeight: FontWeight.w300,color: TColors.textColor,),
  );
}