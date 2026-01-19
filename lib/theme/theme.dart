import 'package:flutter/material.dart';

class MyThemes {
  var myTheme = ThemeData(
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xfff7f4ed),
      titleTextStyle: TextStyle(
        fontFamily: 'Lora',
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 22,
      ),
    ),
    scaffoldBackgroundColor: Color(0xfff7f4ed),
    textTheme: TextTheme(
      titleMedium: TextStyle(
        fontFamily: 'Lora',
        fontWeight: FontWeight.bold,
        fontSize: 22,
      ),
      labelSmall: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontFamily: 'Nunito',
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xffefe8de),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: Colors.black,

      selectedLabelStyle: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
      unselectedLabelStyle: TextStyle(
        fontFamily: 'NotoSans',
        color: Colors.black,
        fontSize: 12,
      ),
      selectedIconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Color(0xfff2e4d9),
    ),
  );
}
