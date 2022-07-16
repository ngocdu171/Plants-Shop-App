import 'package:flutter/material.dart';
import 'package:plantshopapps/data/plants.dart';
// import 'package:plantshopapps/data/plants.dart';

class SaleWidget extends StatelessWidget {
  
  // final test;
  const SaleWidget({ Key? key, required this.data, }) : super(key: key);
  
  final String data;
  // final PlantsList tests;
  @override
  Widget build(BuildContext context) {
    return 
    Text(data);
      // const Text("this is sale widget 2");
      // Text('${widget.tam}');
      // Wrap(
      //   children: tests.map((e)=>Column(
      //         children: [
      //           Card(
      //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      //             child: Image.asset(e.url, width: 90, height: 90,)
      //           ),
      //           Text(e.name),
      //           Text(e.price + " €")
      //         ],
      //       )).toList()
      // );
  }
}