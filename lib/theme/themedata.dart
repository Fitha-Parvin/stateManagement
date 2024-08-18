

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Customtheme{
  static const lightThemeFont="ComicNeue",darkThemeFont="Poppins";

  static final lightTheme=ThemeData(
     primaryColor: Colors.white,
     brightness: Brightness.light,
     scaffoldBackgroundColor: Colors.white,
     useMaterial3: true,
     fontFamily: lightThemeFont,
     switchTheme: SwitchThemeData(
       thumbColor:   MaterialStateProperty.resolveWith<Color>((states)=>Colors.red)
     ),
     appBarTheme: AppBarTheme(
       centerTitle: true,
       backgroundColor: Colors.white,
       scrolledUnderElevation: 0,
       titleTextStyle: TextStyle(fontWeight: FontWeight.w800,
       color: Colors.black,
       fontSize: 23),
       iconTheme: IconThemeData(
         color: Colors.red,),
       elevation: 0,
       actionsIconTheme: IconThemeData(color: Colors.red),
       systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark)
     ));
 static final darkTheme=ThemeData(
      primaryColor: Colors.yellow,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      useMaterial3: true,
      fontFamily: darkThemeFont,
      switchTheme: SwitchThemeData(trackColor:
           MaterialStateProperty.resolveWith<     Color>((states)=>Colors.yellow)
      ),
      appBarTheme: AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.black,
          scrolledUnderElevation: 0,
          titleTextStyle: TextStyle(fontWeight: FontWeight.w800,
              color: Colors.white,
              fontSize: 23),
          iconTheme: IconThemeData(
            color: Colors.yellow,),
          elevation: 0,
          actionsIconTheme: IconThemeData(color: Colors.yellow),
          systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light)
      ));
}