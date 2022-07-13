import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plantshopapps/screens/loginpage.dart';
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
        backgroundColor: const Color(0xFFFAFAFA),
        primaryColor: const Color(0xFFFFBD00),
        // ignore: deprecated_member_use
        accentColor: const Color(0xFFFFEBC7)
        // primarySwatch: Colors.blue,
        // scaffoldBackgroundColor: Colors.white,
        // textTheme: GoogleFonts.robotoTextTheme(
        //   Theme.of(context).textTheme.apply(bodyColor: const Color(0xFF000000))
        //   ),
        // visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: const LoginPage(),
    );
  }
}
