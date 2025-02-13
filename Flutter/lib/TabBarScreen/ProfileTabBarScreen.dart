import 'package:flutter/material.dart';

class Profiletabbarscreen extends StatefulWidget {
  const Profiletabbarscreen({super.key});

  @override
  State<Profiletabbarscreen> createState() => _ProfiletabbarscreenState();
}

class _ProfiletabbarscreenState extends State<Profiletabbarscreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        title: const Text('Profile tab bar screen'),
      ),

      body: Center(
        child: CircularProgressIndicator(
          color: Colors.red,
          backgroundColor: Colors.grey,
          strokeWidth: 5,
        ),
      ),



     );
  }
}