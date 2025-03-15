import 'package:flutter/material.dart';

class Mydesign extends StatelessWidget {
  const Mydesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is my first Design"),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [

          // Story
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white70,
                        ),
                        child: Image.asset(
                          "assets/RaselHossain.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white.withOpacity(0.8),
                            child: const Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                  ),
                                  Text("Name")
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white70,
                        ),
                        child: Image.asset(
                          "assets/RaselHossain.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white.withOpacity(0.8),
                            child: const Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                  ),
                                  Text("Name")
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white70,
                        ),
                        child: Image.asset(
                          "assets/RaselHossain.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white.withOpacity(0.8),
                            child: const Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                  ),
                                  Text("Name")
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    fit: StackFit.passthrough,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 120,
                        decoration: const BoxDecoration(
                          color: Colors.white70,
                        ),
                        child: Image.asset(
                          "assets/RaselHossain.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          child: Container(
                            width: 100,
                            height: 30,
                            color: Colors.white.withOpacity(0.8),
                            child: const Center(
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.person,
                                  ),
                                  Text("Name")
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Story


          Container(
            width: MediaQuery.of(context).size.width,
            height: 300,
            color: Colors.green,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.person, size: 40),
                      SizedBox(width: 8), // Adds spacing
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Account Holder Name", style: TextStyle(fontSize: 16)),
                            Text("15/03/2024", style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ),
                    ],
                  )

              
              
                ],
              
              ),
            )
          ),








        ],
      )),
    );
  }
}
