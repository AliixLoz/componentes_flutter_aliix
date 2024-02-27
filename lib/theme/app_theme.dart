//Definicion de los temas de estilo de la app
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //constante de un color primario
  static const primaryColor = Color.fromARGB(223, 115, 14, 58);
  //constante de un color secundario
  static const secondaryColor = Color.fromARGB(255, 13, 11, 32); 
  //constante de color de fondo
  static const backColor = Color.fromARGB(224, 252, 252, 252);
  //constante de color
  static const backColor2 = Color.fromARGB(223, 83, 145, 170);
  //constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
          titleTextStyle: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 28.5,
            fontWeight: FontWeight.bold,
          ),
      ),
      iconTheme: const IconThemeData(
        color: primaryColor,
        size: 28.0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backColor,
          ),
          foregroundColor: MaterialStateProperty.all(
            Colors.tealAccent,
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.pacifico(fontSize: 16.0,)
          ),
        ),
      ),
      textTheme: TextTheme(
        //Titulos muy grandes
        headlineLarge: GoogleFonts.playfair(
          color: primaryColor,
          fontSize: 26.5,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor,
          decorationStyle: TextDecorationStyle.dotted,
          decorationThickness: 2.0,
        ),
        headlineMedium: GoogleFonts.montserrat(
          color: secondaryColor,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        //Estilo para texto muy pequeño
        bodySmall: GoogleFonts.shadowsIntoLight(
          color: secondaryColor,
          fontSize: 16.0,
        ),
      ),
  );

}