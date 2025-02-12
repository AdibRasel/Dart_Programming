import 'package:flutter/material.dart';

class Searchtabbarscreen extends StatefulWidget {
  const Searchtabbarscreen({super.key});

  @override
  State<Searchtabbarscreen> createState() => _SearchtabbarscreenState();
}

class _SearchtabbarscreenState extends State<Searchtabbarscreen> {
  @override
  Widget build(BuildContext context) {
     return Container(
      child: Center(
        child: Text('Search tab bar screen'),
      ),
    );
  }
}