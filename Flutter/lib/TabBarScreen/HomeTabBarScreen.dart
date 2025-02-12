import 'package:flutter/material.dart';

class Hometabbarscreen extends StatefulWidget {
  const Hometabbarscreen({super.key});

  @override
  State<Hometabbarscreen> createState() => _HometabbarscreenState();
}

class _HometabbarscreenState extends State<Hometabbarscreen> {
  @override
  Widget build(BuildContext context) {
     return Container(
      child: Center(
        child: Text('Camera TabBar Screen'),
      ),
    );
  }
}