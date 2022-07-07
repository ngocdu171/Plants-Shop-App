import 'package:flutter/material.dart';
import 'package:plantshopapps/data/plants.dart';

class DetailPage extends StatelessWidget {
  // final PlantsList plantsList;
  final int id;
  final String title;
  final String url;
  final String price;

  const DetailPage({ required this.title, required this.id,
  required this.url, required this.price });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(title),
            Image.asset(url),
            Text(price)
          ],
        ),
      ),
    );
  }
}