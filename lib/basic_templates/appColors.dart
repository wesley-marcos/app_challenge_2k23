import 'package:flutter/material.dart';

class AppColors {
  static const Color cornflowerBlue = Color(0xFF6495ED);
  static const Color dodgerBlue = Color(0xFF1E90FF);
  static const Color deepSkyBlue = Color(0xFF00BFFF);
  static const Color lightSkyBlue = Color(0xFF87CEFA);
  static const Color skyBlue = Color(0xFF87CEEB);
  static const Color border = Color(0xFFE1E1E6);
  static const Color darkBlue = Color(0xff2193b0);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF514766);
  static const Color grey = Color(0xFF6E6680);
  static const Color ciano = Color(0xFF00FFFF);
  static const Color turquesa = Color(0xFF40E0D0);
  static const Color steelBlue = Color(0xFF4682B4);
  static const Color lightSteelBlue = Color(0xFFB0C4DE);
  static const Color lightBlue = Color(0xFFADD8E6);
  static const Color basicGreen = Color(0xFF9DCE59);
  static const Color mediumDarkCyan = Color(0xFF11B1AE);
  static const Color cyan = Color(0xFF019EDC);
}

LinearGradient backgroundApp() {
  return const LinearGradient(
    colors: [
      Color(0xFF9DCE59),
      AppColors.mediumDarkCyan,
      AppColors.cyan,
    ],
    stops: [
      0,
      0.5,
      1,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

LinearGradient backgroundAppBar() {
  return const LinearGradient(
    colors: [
      Color(0xFF9DCE59),
      AppColors.mediumDarkCyan,
      AppColors.cyan,
    ],
    stops: [
      0,
      0.7,
      1,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
