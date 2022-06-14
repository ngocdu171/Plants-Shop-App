import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget { 
  final double heightcon;
  final String plantname;
  final String url;
  final int a;
  final int r;
  final int g;
  final int b;
  final double picwidth;

  const CategoryCard( this.a, this.r, this.g, this.b,
    this.heightcon, this.plantname, this.url, this.picwidth
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(a, r, g, b),
        // color: Color.fromARGB(255, 239, 255, 246),
        boxShadow: const [
          BoxShadow(
            color: Colors.blueGrey,
            blurRadius: 10
          )
        ]
      ),
      height: heightcon,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(plantname, style: const TextStyle(
                  fontSize: 20
                ),),
                const Text("..........")
              ],
            ),
            Image.asset(url, width: picwidth,)
          ],
        ),
      ),
    );
  }
}