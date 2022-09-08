import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// Text theme for Material Design 3 themed screens.
TextTheme materialTextTheme() {
  const textTheme = TextTheme(
    displayMedium: TextStyle(
      fontSize: 50
    ),
    headlineMedium: TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.25,
    ),
    headlineSmall: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.bold,
      letterSpacing: 0.15
    ),
    titleLarge: TextStyle(
      fontSize: 25,
      letterSpacing: 0.25
    ),
    titleMedium: TextStyle(
      fontSize: 21,
      letterSpacing: 0.15
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      letterSpacing: 0.25,
    ),
    bodyMedium: TextStyle(
      fontSize: 14,
      letterSpacing: 0.25,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      letterSpacing: 0.15
    ),
    labelMedium: TextStyle(
      fontSize: 10,
      letterSpacing: 0.25
    )
  );

  return GoogleFonts.senTextTheme(textTheme).copyWith(
    bodyLarge: GoogleFonts.roboto(textStyle: textTheme.bodyLarge),
    bodyMedium: GoogleFonts.roboto(textStyle: textTheme.bodyMedium),
    bodySmall: GoogleFonts.roboto(textStyle: textTheme.bodySmall),
    labelMedium: GoogleFonts.roboto(textStyle: textTheme.labelMedium),
  );
}