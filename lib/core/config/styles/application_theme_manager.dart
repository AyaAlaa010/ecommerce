import 'package:ecommerce/core/config/styles/app_colors.dart';
import 'package:flutter/material.dart';

class ApplicationThemeManager {
  static ThemeData lightTheme = ThemeData(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.primaryColor,
      useMaterial3: true,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.primaryColor,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(size: 28, color: Colors.white),
        unselectedIconTheme:
            IconThemeData(size: 24, color: AppColors.primaryColor),
        unselectedItemColor: AppColors.primaryColor,
        selectedItemColor: Colors.white,
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color: AppColors.primaryColor),
        titleMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.white),
        titleSmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.primaryColor),
        bodyLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white),
        bodyMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textPrimaryColor),
        bodySmall: TextStyle(
            fontFamily: "Poppins",
            fontSize: 16,
            fontWeight: FontWeight.w300,
            color: Colors.white),
        displayLarge: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textPrimaryColor),
        displayMedium: TextStyle(
            fontFamily: "Poppins",
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textPrimaryColor),
      ));
}
