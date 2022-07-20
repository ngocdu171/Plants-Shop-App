import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
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
  //firestore
  final CollectionReference _productsRef =
    FirebaseFirestore.instance.collection("products");

  @override
  Widget build(BuildContext context) {
    final test = plantsList.where((element) => element.discount == true);

  return Scaffold(
      body: Container(
          child: Stack(
            children: [
              FutureBuilder<QuerySnapshot>(
                future: _productsRef.get(),
                builder: (context, snapshot) {
                  if(snapshot.hasError) {
                    return Scaffold(
                      body: Center(
                        child: Text("Error: ${snapshot.error}"),
                      ),
                    );
                  }

                  //Collection data ready to show
                  if(snapshot.connectionState == ConnectionState.done) {
                    return ListView(
                      children: snapshot.data!.docs.map((product) {
                        return GestureDetector(
                          onTap: () {
                            // Navigator.push(context, MaterialPageRoute(
                            //   builder: (context) => DetailPage(title: title, id: id, url: url, price: price)
                            // ));
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Text(product['name']),
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                                  child: Image.network(product['image'][0], width: 90, height: 90,)
                                ),
                                Text(product['name']),
                                Text(product['price'].toString())
                              ],
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  }

                  //Loading State
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
    );
  }

  //   return Scaffold(
  //     body: SingleChildScrollView(
  //       child: Container(
  //         padding: EdgeInsets.only(
  //           top: MediaQuery.of(context).padding.top,
  //           left: 25,
  //           right: 25
  //         ),
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             // const Text("Shop", style: TextStyle(
  //             //   fontSize: 25, fontWeight: FontWeight.bold
  //             // ),),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 Row(
  //                   children: [
  //                     const Text("New Arrival", style: TextStyle(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold
  //                     ),),
  //                     Container(
  //                       child: Image.asset("assets/icons/icons8-expand-arrow-64.png", width: 20,),
  //                     )
  //                   ],
  //                 ),
  //                 Row(
  //                   children: [
  //                     const Text("Price", style: TextStyle(
  //                       fontSize: 20,
  //                       fontWeight: FontWeight.bold
  //                     ),),
  //                     Container(
  //                       child: Image.asset("assets/icons/icons8-expand-arrow-64.png", width: 20,),
  //                     )
  //                   ],
  //                 ),
  //               ]
  //             ),

  //             Wrap(
  //               alignment: WrapAlignment.start,
  //               spacing: 15,
  //               runSpacing: 20,
  //               children: plantsList.map((e) => GestureDetector(
  //                 onTap: () {
  //                   Navigator.of(context).push(
  //                     MaterialPageRoute(
  //                       builder: (context) => DetailPage(id: e.id,
  //                         title: e.name, url: e.url, price: e.price)
  //                     )
  //                   );
  //                 },
  //                 child: Column(
  //                   children: [
  //                     Card(
  //                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //                       child: Image.asset(e.url, width: 90, height: 90,)
  //                     ),
  //                     Text(e.name),
  //                     Text(e.price + " €")
  //                   ],
  //                 ),
  //               )).toList(),
  //             ),
              
  //           ],
  //         ),
  //       )
  //     ),
  //   );

  // }
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