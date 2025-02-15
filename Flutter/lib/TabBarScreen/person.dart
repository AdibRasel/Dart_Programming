import 'package:flutter/material.dart';

class Person extends StatelessWidget {
  String personName;
  Person(
    this.personName, 
    {super.key, }
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Person"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Icon(Icons.home)],
              ),
              Column(
                children: [Icon(Icons.person)],
              ),
              Column(
                children: [Icon(Icons.analytics)],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(width: 5, color: Colors.blue),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                 const Icon(Icons.person, size: 100,),
                 Text(personName, style: const TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                 ),),
                 const Text("Software Developer", style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                 ),)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
