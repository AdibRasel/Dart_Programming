import 'package:flutter/material.dart';

class FractionalySizedBox extends StatelessWidget {
  const FractionalySizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionalySizedBox'),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        alignment: Alignment.center,
        color: Colors.red,
        child: FractionallySizedBox(
          widthFactor: .8, // 80% of the screen width
          heightFactor: .5, // 50% of the screen height
          child: Container(
            color: Colors.green,
            child: Center(
              child: Text('FractionallySizedBox ডিভাইসের সাথে সাইজ পরিবর্তন করবে'),
            ),
          ),
        ),
      )
    );
  }
}