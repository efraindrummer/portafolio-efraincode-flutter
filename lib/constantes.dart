import 'package:flutter/material.dart';

//colores primarios
const kTextColor      = Color(0xFF707070);
const kTextLightColor = Color(0xFF555555);

//padding general
const kDefaultPadding = 20.0;

final kDefaultShadow = BoxShadow(
  offset: Offset(0, 20),
  blurRadius: 50,
  color: Colors.black.withOpacity(0.1)
);

//Diseño del Textfield
final kDefaultOutlineInputBorder = OutlineInputBorder(
  //borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: Color(0xFFCEE4DF)
  )
);

final kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder
);
