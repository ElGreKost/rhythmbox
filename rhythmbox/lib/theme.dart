import 'package:flutter/material.dart';

final appTheme = ThemeData(
  primarySwatch: Colors.teal,
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    bodyMedium: TextStyle(fontSize: 16),
  ),
  iconTheme: const IconThemeData(color: Colors.teal),
  buttonTheme: const ButtonThemeData(buttonColor: Colors.teal),
);

const Color primaryColor = Color(0xFF008080);
const Color accentColor = Color(0xFFFFA500);

BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: primaryColor),
    borderRadius: BorderRadius.circular(10),
  );
}

TextStyle headerTextStyle() {
  return const TextStyle(
    color: primaryColor,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
}

TextStyle itemTextStyle() {
  return const TextStyle(
    color: Colors.black,
    fontSize: 16,
  );
}
