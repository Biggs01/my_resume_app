

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TappTheme{
  static ThemeData lightTheme  = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: const ColorScheme.light(),
      textTheme: TextTheme(
        subtitle1: GoogleFonts.lato(
          fontSize: 40,
          color: Colors.black
        ),
      ),
      appBarTheme:  const AppBarTheme(
        backgroundColor: Colors.blue,
      ),
  );

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      colorScheme: const ColorScheme.dark(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.black,
      ),
      textTheme: TextTheme(
          subtitle1: GoogleFonts.lato(
            fontSize: 40,
            color: Colors.blue,
            fontWeight: FontWeight.w600
          )
      ),
  );
}