import 'package:flutter/material.dart';
// import 'package:plantshopapps/data/plants.dart';

class SaleWidget extends StatelessWidget {
  
  // final test;
  const SaleWidget({ Key? key, required this.data, }) : super(key: key);
  
  final String data;
  @override
  Widget build(BuildContext context) {
    return 
    Text(data);
      // const Text("this is sale widget 2");
      // Text('${widget.tam}');
      // Wrap(
      //   children: test.map((e) => Text(e.name))
      // );
  }
}