import 'package:flutter/material.dart';

class MyStyle {
  double h1 = 13.0, h2 = 18.0;
  Color textColor = Colors.red[50];
  Color mainColor = Colors.orange[200];
  String nameFont = 'McLaren';
  String nameApp = 'Ung Pinthong';

  EdgeInsetsGeometry myPadding = EdgeInsets.all(16.0);

  TextStyle myWhiteTextStyle = TextStyle(color: Colors.orange);
  TextStyle myTextStyleH2 = TextStyle(
    color: Colors.red[50],
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );

  ShapeBorder curveButton = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30.0),
  );

  MyStyle();
}
