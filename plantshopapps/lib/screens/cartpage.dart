import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantshopapps/screens/detailpage.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final CollectionReference _productsRef =
    FirebaseFirestore.instance.collection("products");
  final CollectionReference _usersRef =
      FirebaseFirestore.instance.collection("users");

  final User? _user = FirebaseAuth.instance.currentUser;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<QuerySnapshot>(
                future: _usersRef.doc(_user?.uid).collection("Cart").get(),
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
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => DetailPage(productId: product.id)
                            ));
                          },
                          child: FutureBuilder<dynamic>(
                            future: _productsRef.doc(product.id).get(),
                            builder: (context, productSnap) {
                              if(productSnap.hasError) {
                                return Container(
                                  child: Center(
                                    child: Text("${productSnap.error}"),
                                  ),
                                );
                              }

                              if(productSnap.connectionState == ConnectionState.done) {
                                Map _productMap = productSnap.data?.data();

                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 16,
                                    horizontal: 24
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 90,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(8),
                                          child: Image.network(
                                            _productMap['image'][0],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                          left: 16
                                        ),
                                        child: Column(
                                          children: [
                                            Text(_productMap['name']),
                                            Text(_productMap['price'].toString())
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                );
                              }

                              return Container(
                                child: const Center(
                                  child: CircularProgressIndicator(),
                                ),
                              );

                            }
                          )
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
    );
  }
}