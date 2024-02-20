//Definicion de los temas de estilo de la app
import 'package:flutter/material.dart';

class AppTheme{
  //constante de un color primario
  static const primaryColor = Color.fromARGB(223, 217, 180, 224);
  //constante de color de fondo
  static const backColor = Color.fromARGB(223, 171, 232, 236);
  //constante de tema
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(
          color: primaryColor,
      )
  );

}