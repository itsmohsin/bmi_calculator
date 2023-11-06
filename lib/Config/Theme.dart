import 'package:bmi_calculator/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.light(
    primary: LPrimaryColor,
    primaryContainer: LDivColor,
    onSecondaryContainer: LLabelColor,
    background: LBgColor,
    onBackground: LFontColor,
  ),
);

var darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark(
    primary: DPrimaryColor,
    primaryContainer: DDivColor,
    onSecondaryContainer: DLabelColor,
    background: DBgColor,
    onBackground: DFontColor,
  ),
);
