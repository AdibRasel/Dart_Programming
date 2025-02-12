import 'package:flutter/material.dart';

class Profiletabbarscreen extends StatefulWidget {
  const Profiletabbarscreen({super.key});

  @override
  State<Profiletabbarscreen> createState() => _ProfiletabbarscreenState();
}

class _ProfiletabbarscreenState extends State<Profiletabbarscreen> {
  @override
  Widget build(BuildContext context) {
     return Container(
      child: Center(
        child: Text('Profile tab bar screen'),
      ),
    );
  }
}