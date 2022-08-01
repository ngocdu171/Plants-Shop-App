import 'package:flutter/material.dart';

class ImageSwipe extends StatefulWidget {
  final List imageList;
  const ImageSwipe({Key? key, required this.imageList}) : super(key: key);

  @override
  State<ImageSwipe> createState() => _ImageSwipeState();
}

class _ImageSwipeState extends State<ImageSwipe> {

  int _selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Stack(
        children: [
          PageView(
            // ignore: avoid_types_as_parameter_names
            onPageChanged: (num) {
              setState(() {
                _selectedPage = num;
              });
            },
            children: [
              for(var i=0; i < widget.imageList.length; i++)
              Container(
                child: Image.network(
                  widget.imageList[i],
                ),
              )
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for(var i=0; i < widget.imageList.length; i++)
                AnimatedContainer(
                  duration: const Duration(milliseconds: 30),
                  curve: Curves.easeOutCubic,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 5
                  ),
                  width: _selectedPage == i ? 35 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}