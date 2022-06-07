import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/category_card.dart';

class Category extends StatelessWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 580,
      child: Column(
          children: const <Widget>[
          CategoryCard(
            255, 239, 255, 246,
            200,
            "Plant outdoor",
            "assets/images/peonies_Outdoor.jpg", 200
          ),
          CategoryCard(
            255, 250, 243, 230,
            150,
            "Plant indoor",
            "assets/images/Spider Plant.jpg", 150
          ),
          CategoryCard(
            255, 239, 255, 246,
            150,
            "Plant office",
            "assets/images/bamboo_Office.jpeg", 150
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