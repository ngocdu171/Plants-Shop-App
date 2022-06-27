import 'package:flutter/material.dart';
import 'package:plantshopapps/data/plants.dart';

class SaleWidget extends StatelessWidget {
  
  const SaleWidget({ Key? key, required Iterable<PlantsList> testList }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return 
      const Text("this is sale widget 1");
      // Wrap(
      //   children: test('', () {
          
      //   });,
      // )
  }
}