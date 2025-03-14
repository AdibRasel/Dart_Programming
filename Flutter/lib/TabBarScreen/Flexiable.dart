import 'package:flutter/material.dart';

class Flexiables extends StatelessWidget {
  const Flexiables({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            fit: FlexFit.loose, // Expanded থেকে এই অফশনটি বার্তি আর নয় সব সমান এ। 
            flex: 3, // এই প্যারামিটার দিয়ে আমরা বলতে পারি কতগুলো ফ্লেক্স দিয়ে ডিভাইস ভিতরে কতটুকু জায়গা নিয়ে নিবে।
            child: Container(color: Colors.green,)
          ),
          Flexible(
            flex: 5, // এখানে টোটাল Flexible টোটাল কয়টার উপর ভিত্তি করে ভাগ করে যায়গা নিবে। 
            child: Container(color: Colors.blue,)
          ),
          Flexible(
            flex: 2,
            child: Container(color: Colors.yellow,)
          ),
        ],
      ),
    );
  }
}