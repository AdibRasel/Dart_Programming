import 'package:flutter/material.dart';

class AspectRatioRespon extends StatefulWidget {
  const AspectRatioRespon({super.key});

  @override
  State<AspectRatioRespon> createState() => _AspectRatioResponState();
}

class _AspectRatioResponState extends State<AspectRatioRespon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        color: Colors.red,
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.green,
            child: Center(
              child: Text('AspectRatio 16:9 ডিভাইসের সাথে সাইজ পরিবর্তন করবে'),
            ),
          ),
        ),
      )
    );
  }
}