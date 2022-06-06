import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget { 
  final double heightcon;
  final String plantname;
  final String url;

  const CategoryCard( this.heightcon,this.plantname, this.url );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: heightcon,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Column(
                children: [
                  Text(plantname, style: const TextStyle(
                    fontSize: 20
                  ),),
                  const Text("..........")
                ],
              ),
              Image.asset(url, width: 100,)
            ],
          ),
        ),
      ),
    );
  }
}