import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/aboutus.dart';
import 'package:plantshopapps/widgets/category.dart';
import 'package:plantshopapps/widgets/footer.dart';
import 'package:plantshopapps/widgets/recommend.dart';
import 'package:plantshopapps/widgets/welcome.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    // Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: const <Widget>[
          Welcome(),
          Text(
            'Category',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          Category(),
          Text(
            'Recommend',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
          // Recommend(),
          AboutUs(),
          Footer()
        ]
      ),
    );
  }
}