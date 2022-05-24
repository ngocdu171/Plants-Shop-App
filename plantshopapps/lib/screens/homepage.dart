 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final style = const TextStyle(fontWeight: FontWeight.bold, color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: ListView(
        children: <Widget>[
          Text('Trang chu', style: GoogleFonts.roboto(textStyle: style),),
          Text('Cua hang'),
          Text('Gioi thieu'),
          Text('Lien he'),
          Text('Bai viet'),
        ],
      ),
    );
  }
}