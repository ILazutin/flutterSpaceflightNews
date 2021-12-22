import 'package:flutter/material.dart';

class Styles {

  static ThemeData theme() {
    return ThemeData.dark();
  }

  static TextStyle appTitle() {
    return const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30);
  }

  static Color cardColor() {
    return const Color(0xaa272e47).withOpacity(0.5);
  }

  static TextStyle cardValue() {
    return const TextStyle(
      color: Color(0xffcccccc),
      fontSize: 40,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle cardTitle() {
    return const TextStyle(
      color: Color(0xff999999),
      fontSize: 20,
    );
  }

  static TextStyle countryValue() {
    return const TextStyle(
      color: Color(0xffcccccc),
      fontSize: 12,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle countryTitle() {
    return const TextStyle(
      color: Color(0xff999999),
      fontSize: 30,
    );
  }

}