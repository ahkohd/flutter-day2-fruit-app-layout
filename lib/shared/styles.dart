import 'package:flutter/material.dart';

Color bgColor = Color(0xff7bbd37);
Color lightTint = Color(0xff93d154);
Color white = Colors.white;
Color hotRed = Color(0xfff04146);
Color hotRedTint = Color.fromRGBO(244, 71, 65, .5);

TextStyle headerTextStyle =
    TextStyle(fontSize: 20, fontWeight: FontWeight.w600);

TextStyle heroText = TextStyle(
    fontSize: 60,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w800,
    color: Colors.white);

TextStyle factHeader =
    TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 18, fontWeight: FontWeight.w800);
TextStyle descriptionText = TextStyle(fontSize: 12, fontFamily: 'Poppins', color: Colors.white);

BoxDecoration heroDeco = BoxDecoration(
    color: lightTint,
    borderRadius: BorderRadiusDirectional.vertical(bottom: Radius.circular(40)),
    boxShadow: [
      BoxShadow(
          blurRadius: 5,
          spreadRadius: 5,
          offset: Offset(0, 0),
          color: Color.fromRGBO(0, 0, 0, .1))
    ]);

BoxDecoration statusDanger = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: hotRed,
    boxShadow: [
      BoxShadow(
          color: hotRedTint,
          offset: Offset(0, 3),
          spreadRadius: 5,
          blurRadius: 10)
    ]);


BoxDecoration statusDanger2 = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: white,
);
