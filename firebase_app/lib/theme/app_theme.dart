import 'package:firebase_app/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData(
  backgroundColor: bodyDark,
  primaryColor: textDark,
  buttonColor: bodyDark,
  textTheme: TextTheme(
   headline1: GoogleFonts.modak(color: textDark),
   headline2: GoogleFonts.parisienne(color: textDark),
   headline3: GoogleFonts.marckScript(color: textDark),
   headline4: GoogleFonts.badScript(color: textDark),
   headline5: GoogleFonts.tangerine(color:textDark),
   headline6: GoogleFonts.sacramento(color: textDark, fontSize: 20)
  )
);


ThemeData lightTheme = ThemeData(
  backgroundColor: bodyLight,
  primaryColor: textLight,
  buttonColor: bodyLight,
  textTheme: TextTheme(
   headline1: GoogleFonts.modak(color: textLight),
   headline2: GoogleFonts.parisienne(color: textLight),
   headline3: GoogleFonts.marckScript(color: textLight),
   headline4: GoogleFonts.badScript(color: textLight),
   headline5: GoogleFonts.tangerine(color: textLight),
   headline6: GoogleFonts.sacramento(color: textLight, fontSize: 20)
  )
);