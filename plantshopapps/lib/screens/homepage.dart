import 'package:flutter/material.dart';
import 'package:plantshopapps/screens/detailpage.dart';
// import 'package:plantshopapps/widgets/aboutus.dart';
// import 'package:plantshopapps/widgets/category.dart';
// import 'package:plantshopapps/widgets/footer.dart';
// import 'package:plantshopapps/widgets/recommend.dart';
// import 'package:plantshopapps/widgets/welcome.dart';

import '../data/plants.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final test = plantsList.where((element) => element.discount == true);

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            right: 25
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text("Shop", style: TextStyle(
              //   fontSize: 25, fontWeight: FontWeight.bold
              // ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Text("New Arrival", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      Container(
                        child: Image.asset("assets/icons/icons8-expand-arrow-64.png", width: 20,),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Price", style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      ),),
                      Container(
                        child: Image.asset("assets/icons/icons8-expand-arrow-64.png", width: 20,),
                      )
                    ],
                  ),
                ]
              ),

              Wrap(
                alignment: WrapAlignment.start,
                spacing: 15,
                runSpacing: 20,
                children: plantsList.map((e) => GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailPage(id: e.id,
                          title: e.name, url: e.url, price: e.price)
                      )
                    );
                  },
                  child: Column(
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Image.asset(e.url, width: 90, height: 90,)
                      ),
                      Text(e.name),
                      Text(e.price + " €")
                    ],
                  ),
                )).toList(),
              ),
              
            ],
          ),
        )
      ),
    );

  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Welcome(),
//             Category(),
//             Recommend(),
//             AboutUs(),
//             Footer()
//           ],
//         ),
//       ),
//     );
//   }
// }