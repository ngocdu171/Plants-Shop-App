import 'package:flutter/material.dart';

class ProductSize extends StatefulWidget {
  final List sizeList;
  final Function(String) selectedSize;
  const ProductSize({Key? key, required this.sizeList, required this.selectedSize}) : super(key: key);

  @override
  State<ProductSize> createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {

  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Row(
        children: [
          for(var i = 0; i < widget.sizeList.length; i++)
            GestureDetector(
              onTap: () {
                widget.selectedSize("${widget.sizeList[i]}");
                setState(() {
                  _selected = i;
                });
              },
              child: Container(
                width: 42,
                height: 42,
                decoration: BoxDecoration(
                  color: _selected == i ? const Color.fromARGB(255, 255, 127, 127) : const Color.fromARGB(255, 203, 203, 203),
                  borderRadius: BorderRadius.circular(8)
                ),
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(
                  horizontal: 4
                ),
                child: Text(widget.sizeList[i],
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: _selected == i ? Colors.white : Colors.black,
                    fontSize: 16
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}