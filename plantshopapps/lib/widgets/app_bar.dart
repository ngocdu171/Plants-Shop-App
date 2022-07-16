import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  // const CustomAppBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/icons/icons8-list-64.png", width: 30,),
          Image.asset("assets/images/logo.png", width: 30,),
          Image.asset("assets/icons/icons8-cart-64.png", width: 30,),
        ],
      ),
    );
  }
}