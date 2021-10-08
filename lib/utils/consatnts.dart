import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const COLOR_BLACK = Colors.black;
const COLOR_BU = Color(0xff2AB2FF);

TextTheme defaultText = TextTheme(
    headline1: GoogleFonts.kanit(fontWeight: FontWeight.bold, fontSize: 60),
    headline2: GoogleFonts.kanit(fontWeight: FontWeight.bold, fontSize: 40),
    headline3: GoogleFonts.kanit(fontWeight: FontWeight.bold, fontSize: 30),
    headline4: GoogleFonts.kanit(fontWeight: FontWeight.bold, fontSize: 20),
    bodyText1: GoogleFonts.kanit(fontSize: 16, fontWeight: FontWeight.normal),
    bodyText2: GoogleFonts.kanit(
      fontSize: 14,
      fontWeight: FontWeight.normal,
    ),
    subtitle1: GoogleFonts.kanit(fontSize: 16, fontWeight: FontWeight.normal));
