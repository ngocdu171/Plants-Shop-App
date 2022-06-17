import 'package:flutter/material.dart';
import 'package:plantshopapps/data/hotList.dart';

class Recommend extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const Text('Recommend', style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold
          ),),
          Container(
            height: 340,
            child: Column(
              children: [
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 15,
                  runSpacing: 20,
                  children: hotList.map((e) => Column(
                          children: [
                            Image.asset(e.url, width: 100, height: 100,),
                            Text(e.name),
                            Text(e.price + " €")
                          ],
                        ),
                    ).toList(),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 9, 47, 16),
                    ),
                    child: const Text("More", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),)
                  )
                ]
            ),
            )
        ],
      ),
    );
  }
}