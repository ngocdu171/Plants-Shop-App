import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/category_card.dart';

class Category extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Text('Category', style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold
            ),),
            CategoryCard(
              255, 226, 255, 242,
              200,
              "Plant outdoor",
              "assets/images/peonies_Outdoor.png", 150
            ),
            CategoryCard(
              255, 250, 243, 230,
              150,
              "Plant indoor",
              "assets/images/Spider-plant.png", 150
            ),
            CategoryCard(
              255, 226, 255, 242,
              150,
              "Plant office",
              "assets/images/bamboo_Office.png", 150
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