import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './screens/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plants Shop Application',
      theme: ThemeData(
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme.apply(bodyColor: const Color(0xFF0C9869))
          ),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const HomePage(),
    );
  }
}
