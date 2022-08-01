import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:plantshopapps/widgets/image_swipe.dart';
import 'package:plantshopapps/widgets/product_size.dart';

class DetailPage extends StatefulWidget {
  final String productId;
  const DetailPage({Key? key, required this.productId}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final CollectionReference _productsRef =
      FirebaseFirestore.instance.collection("products");

  final CollectionReference _usersRef =
      FirebaseFirestore.instance.collection("users");

  final User? _user = FirebaseAuth.instance.currentUser;

  String selectedProductSize = "0";

  Future addToCart() {
    return _usersRef
        .doc(_user?.uid)
        .collection("Cart")
        .doc(widget.productId)
        .set({"size": selectedProductSize});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FutureBuilder<dynamic>(
            future: _productsRef.doc(widget.productId).get(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Scaffold(
                  body: Center(
                    child: Text("Error: ${snapshot.error}"),
                  ),
                );
              }

              if (snapshot.connectionState == ConnectionState.done) {
                Map<String, dynamic> product = snapshot.data?.data();
                List imageList = product['image'];
                List sizeList = product['size'];

                return ListView(
                  padding: const EdgeInsets.all(0),
                  children: [
                    ImageSwipe(imageList: imageList),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 24, left: 24, right: 24, bottom: 4),
                      child: Text(
                        product['name'].toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 4, horizontal: 24),
                      child: Text(
                        product['price'].toString() + '€',
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 39, 39)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 24),
                      child: Text(
                        product['description'],
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                      child: Text(
                        "Select Size:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                    ProductSize(
                      sizeList: sizeList,
                      selectedSize: (size) {
                        selectedProductSize = size;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 203, 203, 203),
                                borderRadius: BorderRadius.circular(12)),
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/icons/icons8-like-64.png",
                              height: 40,
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () async {
                                addToCart();
                              },
                              child: Container(
                                height: 65,
                                margin: const EdgeInsets.only(left: 16),
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(12)),
                                alignment: Alignment.center,
                                child: const Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                );
              }

              // loading State
              return const Scaffold(
                body: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
