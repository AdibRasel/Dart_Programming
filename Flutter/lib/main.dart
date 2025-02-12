import 'package:flutter/material.dart';

import 'TabBarScreen/CameratTabBarScreen.dart';
import 'TabBarScreen/HomeTabBarScreen.dart';
import 'TabBarScreen/NotificationsTabBarScreen.dart';
import 'TabBarScreen/ProfileTabBarScreen.dart';
import 'TabBarScreen/SearchTabBarScreen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeActivity(),
    );
  }
}


class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {



    return DefaultTabController(
      length: 5, 
      child: Scaffold(



        appBar: AppBar(
          title: const Text('TabBar Widget'),
          bottom: const TabBar(
            isScrollable: true, // লেখা এবং আইকন সম্পূর্ন দেখা যাবে। 
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(icon: Icon(Icons.camera), text: 'Camera'),
              Tab(icon: Icon(Icons.notifications), text: 'Notifications'),
              Tab(icon: Icon(Icons.account_circle), text: 'Profile'),
            ],
          ),
        ),



        body: const TabBarView(
          children: [
            Hometabbarscreen(),
            Searchtabbarscreen(),
            Camerattabbarscreen(),
            Notificationstabbarscreen(),
            Profiletabbarscreen(),
          ],
        ),




      )
    );

  
  
  }
}


