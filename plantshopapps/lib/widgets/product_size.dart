import 'package:flutter/material.dart';

class ProductSize extends StatefulWidget {
  final List sizeList;
  const ProductSize({Key? key, required this.sizeList}) : super(key: key);

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          for(var i=0; i<widget.sizeList.length; i++)
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color: const Color(0xFFDCDCDC),
                borderRadius: BorderRadius.circular(8)
              ),
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(
                horizontal: 4
              ),
              child: Text(widget.sizeList[i],
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16
              ),
              ),
            )
        ],
      ),
    );
  }
}