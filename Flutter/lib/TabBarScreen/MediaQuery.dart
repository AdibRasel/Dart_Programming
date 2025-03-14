import 'package:flutter/material.dart';

class MediaQuerys extends StatelessWidget {
  const MediaQuerys({super.key});

  @override
  Widget build(BuildContext context) {

    var sizeWide = MediaQuery.of(context).size.width;
    var sizeHeight = MediaQuery.of(context).size.height;
    var sizeOrientation = MediaQuery.of(context).orientation; // landscape or portrait

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: sizeWide,
            height: sizeHeight / 3,
            color: Colors.red,
            child: Center(
              child: Text('Width: $sizeWide, Height: $sizeHeight, Orientation: $sizeOrientation'),
            ),
          ),
        ],
      ),
    );
  }
}