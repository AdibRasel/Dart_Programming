import 'package:flutter/material.dart';
import 'package:shaminibazar/TabBarScreen/Style.dart';

class Stylemediaquery extends StatelessWidget {
  const Stylemediaquery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Style Media Query"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        color: Colors.green,
        child: Center(
          child: Text("Style Media Query", style: Heading(context),),
        ),
      ),
    );
  }
}