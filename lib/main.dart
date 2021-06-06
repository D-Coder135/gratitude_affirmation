import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gratitude_affirmation/screens/registration_screen.dart';

import 'config/palette.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Palette.cToLight,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: RegistrationScreen(),
    );
  }
}
