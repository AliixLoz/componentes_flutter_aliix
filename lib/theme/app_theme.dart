//Definicion de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //constante de un color primario
  static const primaryColor = Color.fromARGB(223, 221, 63, 63);
  //Constante de color secundario
  static const secondaryColor = Color.fromARGB(255, 95, 50, 50);
  //constante de color de fondo
  static const backColor = Color.fromARGB(223, 235, 246, 247);
  //constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
    appBarTheme: const AppBarTheme(
      color: primaryColor,
    ),
    textTheme: TextTheme(
      //Títulos muy grandes
      headlineLarge: GoogleFonts.abrilFatface(
        color: primaryColor,
        fontSize: 26.5,
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: primaryColor,
        decorationStyle: TextDecorationStyle.wavy,
        decorationThickness: 1.5,
      ),
      //Estilo para texto pequeño

    ),
  );
}
