import 'package:asset_handeling/dsiplayScreen.dart';
import 'package:asset_handeling/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'Display': (context) => DisplayScreen(),
      },
    ),
  );
}
