import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/category_card.dart';

class Category extends StatelessWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(
          children: const <Widget>[
          CategoryCard(
            255, 239, 255, 246,
            300,
            "Plant outdoor",
            "assets/images/peonies_Outdoor.jpg"
          ),
          CategoryCard(
            255, 250, 243, 230,
            100,
            "Plant indoor",
            "assets/images/Spider Plant.jpg"
          ),
          CategoryCard(
            255, 239, 255, 246,
            100,
            "Plant office",
            "assets/images/bamboo_Office.jpeg"
          ),
        ],
      ),

      // child: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: const <Widget>[
      //     CategoryCard(
      //       200,
      //       "Plant outdoor",
      //       "assets/images/peonies_Outdoor.jpg"
      //     ),
      //     CategoryCard(
      //       100,
      //       "Plant indoor",
      //       "assets/images/Spider Plant.jpg"
      //     ),
      //     CategoryCard(
      //       100,
      //       "Plant office",
      //       "assets/images/bamboo_Office.jpeg"
      //     ),
      //   ],
      // ),
    );
  }
}