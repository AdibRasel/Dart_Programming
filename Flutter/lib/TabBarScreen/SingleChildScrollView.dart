import 'package:flutter/material.dart';

class SingleChildScrollViews extends StatelessWidget {
  const SingleChildScrollViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal, // স্ক্রোল ডাইরেকশন হরাইজন্টাল ডান থেকে বামে
        // scrollDirection: Axis.vertical, // স্ক্রোল ডাইরেকশন হরাইজন্টাল উপর থেকে চিনে
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 200, width: 200, color: Colors.black,),
            SizedBox(height: 20,),
            Container(height: 200, width: 200, color: Colors.red,),
            SizedBox(height: 20,),
            Container(height: 200, width: 200, color: Colors.green,),
            SizedBox(height: 20,),
            Container(height: 200, width: 200, color: Colors.blue,),
            SizedBox(height: 20,),
            Container(height: 200, width: 200, color: Colors.orange,),
            SizedBox(height: 20,),
            Container(height: 200, width: 200, color: Colors.purple,),
          ],
        ),
      ),
    );
  }
}