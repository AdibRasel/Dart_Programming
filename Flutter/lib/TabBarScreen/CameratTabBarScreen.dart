import 'package:flutter/material.dart';

class Camerattabbarscreen extends StatefulWidget {
  const Camerattabbarscreen({super.key});

  @override
  State<Camerattabbarscreen> createState() => _CamerattabbarscreenState();
}

class _CamerattabbarscreenState extends State<Camerattabbarscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Camera TabBar Screen'),
      ),
    );
  }
}