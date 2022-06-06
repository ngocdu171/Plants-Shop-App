import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: const <Widget>[
                      Text("Plant outdoor"),
                      Text("............")
                    ],
                  ),
                  Image.asset("assets/images/peonies_Outdoor.jpg",
                      width: 100,
                    ),
                ],
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Column(
                  children: const <Widget>[
                    Text("Plant indoor"),
                    Text("............")
                  ],
                ),
                Image.asset("assets/images/Spider Plant.jpg",
                    width: 100,
                  ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Column(
                  children: const <Widget>[
                    Text("Plant office"),
                    Text("............")
                  ],
                ),
                Image.asset("assets/images/bamboo_Office.jpeg",
                    width: 100,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}