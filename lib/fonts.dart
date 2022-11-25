import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle get cardHeadingStyle {
  return GoogleFonts.roboto(
      textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: Colors.white70,
  ));
}

TextStyle get headingStyle {
  return GoogleFonts.robotoCondensed(
      textStyle: const TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: Color(0xFF424242),
  ));
}
