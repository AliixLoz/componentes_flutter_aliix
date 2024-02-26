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
  //constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: AppBarTheme(
          color: primaryColor,
          titleTextStyle: GoogleFonts.lato(
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
            primaryColor,
          ),
          foregroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          textStyle: MaterialStateProperty.all(
            GoogleFonts.pacifico(fontSize: 22.0,)
          ),
        ),
      ),
      textTheme: TextTheme(
        //Titulos muy grandes
        headlineLarge: GoogleFonts.dancingScript(
          color: primaryColor,
          fontSize: 26.5,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
          decoration: TextDecoration.underline,
          decorationColor: primaryColor,
          decorationStyle: TextDecorationStyle.dotted,
          decorationThickness: 2.0,
        ),
        //Estilo para texto muy pequeño
        bodySmall: GoogleFonts.shadowsIntoLight(
          color: secondaryColor,
          fontSize: 16.0,
        ),
      ),
  );

}