import 'package:flutter/material.dart';

import 'TabBarScreen/CameratTabBarScreen.dart';
import 'TabBarScreen/HomeTabBarScreen.dart';
import 'TabBarScreen/NotificationsTabBarScreen.dart';
import 'TabBarScreen/ProfileTabBarScreen.dart';
import 'TabBarScreen/SearchTabBarScreen.dart';
import 'TabBarScreen/Person.dart';

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
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TabBar Screen'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(color: Colors.green),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text('TabBar Screen', style: TextStyle(fontSize: 20)),
              const SizedBox(height: 20),
              const Text('Click on the below tabs to see the content'),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Hometabbarscreen(
                            'First Data', 'Rasel Hossain Adib')),
                  );
                },
                child: const ListTile(
                  tileColor: Colors.white,
                  title: Text('Home'),
                  trailing: Icon(Icons.home),
                ),
              ),
              TextButton(
                onPressed: () {
                  
                },
                child: ListTile(
                  tileColor: Colors.white,
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: "Typing...",
                      label: Text("Enter Any Text"),
                    ),
                    onSubmitted: (value) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Person(value)),
                      );
                    },
                  ),
                  trailing: const Icon(Icons.person),
                ),
              ),
            ],
          ),
        ));
  }
}
