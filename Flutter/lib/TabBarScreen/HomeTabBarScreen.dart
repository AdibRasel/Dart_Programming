import 'package:flutter/material.dart';

import 'ProfileTabBarScreen.dart';
class Hometabbarscreen extends StatefulWidget {

  String reciveData;
  String reciveNameData;

  Hometabbarscreen(
    this.reciveData,
    this.reciveNameData,
    {super.key} // super.key এর উপরে ডাইনামিক ডাটা রিসিভ করার জন্য this.ভ্যরিয়েবলের নাম দিতে হবে।
  );

  @override
  State<Hometabbarscreen> createState() => _HometabbarscreenState();
}
class _HometabbarscreenState extends State<Hometabbarscreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Home tab bar screen'),
      ),
      




      backgroundColor: Colors.grey[200], // Light Background
      body: Center(
        child: Card(
          elevation: 10, // Shadow Effect
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Rounded Corners
          ),
          child: Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [Colors.blueAccent, Colors.purpleAccent], // Gradient Color
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.account_circle, size: 60, color: Colors.white), // Profile Icon
                const SizedBox(height: 10),
                const Text(
                  'Rasel Hossain Adib', // Name
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  'Flutter Developer', // Designation
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: InkWell(
                      onTap:(){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Profiletabbarscreen()));
                      },
                      child: const Text('View Profile')
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      )









    );
  }
}