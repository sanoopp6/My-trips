import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static String fontFamily = GoogleFonts.poppins().fontFamily!;

  static TextStyle bodyLg =
      GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500);

  static TextStyle body =
      GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400);

  static TextStyle bodyLgRegular =
  GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.normal);

  static TextStyle bodySm =
      GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w300);

  static TextStyle bodyXs =
      GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w300);

  static TextStyle h1 =
      GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w700);

  static TextStyle h2 =
      GoogleFonts.poppins(fontSize: 22, fontWeight: FontWeight.w700);

  static TextStyle h3 =
      GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600);

  static TextStyle h4 =
      GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w500);

  static TextStyle veryLarge =
  GoogleFonts.poppins(fontSize: 42, fontWeight: FontWeight.w800);
}
