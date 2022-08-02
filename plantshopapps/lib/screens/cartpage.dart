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
  // final CollectionReference _productsRef =
  //   FirebaseFirestore.instance.collection("products");
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
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)
                            ),
                            height: 350,
                            margin: const EdgeInsets.symmetric(
                              vertical: 12,
                              horizontal: 24
                            ),
                            child: Container(
                              child: Text(product.id),
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
    );
  }
}