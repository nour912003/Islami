import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = Color(0xffB7935F);
Color blackColor = Color(0xff242424);
Color yellowColor = Color(0xffFACC1D);
Color primarydarkColor = Color(0xff141A2E);

class MyThemMode {
  static ThemeData LightThem = ThemeData(
    iconTheme: IconThemeData(size: 30, color: primaryColor),
    dividerTheme: DividerThemeData(thickness: 3, color: primaryColor),
    primaryColor: primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: blackColor, size: 30),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primaryColor,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(size: 30)),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w600, color: blackColor),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w600, color: blackColor),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.w600, color: blackColor)),
  );

  static ThemeData DarkThem = ThemeData(
    iconTheme: IconThemeData(size: 30, color: yellowColor),
    dividerTheme: DividerThemeData(thickness: 3, color: yellowColor),
    primaryColor: primarydarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white, size: 30),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: primarydarkColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(size: 30)),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w600, color: Colors.white),
        bodySmall: GoogleFonts.elMessiri(
            fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white)),
  );
}
