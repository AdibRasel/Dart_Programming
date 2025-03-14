import 'package:flutter/material.dart';

class LayoutBuilders extends StatelessWidget {
  const LayoutBuilders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth > 600) {
            return Container(
              width: 600,
              height: 300,
              alignment: Alignment.center,
              color: Colors.red,
              child : Text('ডিভাইসের সাইজ ৬০০ এর কম হলে এই কন্টেন্ট দেখাবে এই ডিভাইসের সাইজ ${constraints.maxWidth}', style:  TextStyle(fontSize: 20, color: Colors.white),),
            );
          } else {
            return Container(
              width: 700,
              height: 500,
              alignment: Alignment.center,
              color: Colors.green,
              child : Text('ডিভাইসের সাইজ ৬০০ এর বেশি হলে এই কন্টেন্ট দেখাবে এই ডিভাইসের সাইজ ${constraints.maxWidth}', style:  TextStyle(fontSize: 20, color: Colors.white),),
            );
          }
        },
      ),
    );
  }
}