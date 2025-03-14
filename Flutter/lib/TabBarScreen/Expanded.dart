import 'package:flutter/material.dart';

class Expandeds extends StatelessWidget {
  const Expandeds({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 3, // এই প্যারামিটার দিয়ে আমরা বলতে পারি কতগুলো ফ্লেক্স দিয়ে ডিভাইস ভিতরে কতটুকু জায়গা নিয়ে নিবে।
            child: Container(color: Colors.green,)
          ),
          Expanded(
            flex: 5, // এখানে টোটাল Expanded টোটাল কয়টার উপর ভিত্তি করে ভাগ করে যায়গা নিবে। 
            child: Container(color: Colors.blue,)
          ),
          Expanded(
            flex: 1,
            child: Container(color: Colors.yellow,)
          ),
        ],
      ),
    );
  }
}