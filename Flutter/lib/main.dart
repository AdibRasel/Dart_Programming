import 'package:flutter/material.dart';
import 'package:shaminibazar/TabBarScreen/CheckboxRadioButtonProgressBar.dart';
import 'package:shaminibazar/TabBarScreen/Slider.dart';
import 'package:shaminibazar/TabBarScreen/Snackbar.dart';
import 'package:shaminibazar/TabBarScreen/Tooltip.dart';

import 'TabBarScreen/FlutterWork.dart';
import 'TabBarScreen/GridViewExamples.dart';
import 'TabBarScreen/HomeTabBarScreen.dart';
import 'TabBarScreen/ListViewExamples.dart';
import 'TabBarScreen/Person.dart';
import 'TabBarScreen/Slider_Image.dart';
import 'TabBarScreen/ToastNotification.dart';

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
          child: SingleChildScrollView(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Flutterwork()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Flutter Work'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
            
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ListViewExamples()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('ListView Examples'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => GridViewExamples()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('GridView Examples'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
                 TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ToastNotification()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Toast Notification'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
            
            
                 TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CheckboxRadioButtonProgressBar()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Checkbox, Radio Button, Progress Bar'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
            
            
            
                 TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Snackbar()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Snackbar'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
            
                 TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Tooltips()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Tooltip'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
            
                 TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Sliders()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Slider'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                 
                 TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InfiniteCarouselsPage(), // Ensure you're using const if it's a const constructor
                    ),
                  );
                },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Slider Image'),
                    trailing: Icon(Icons.work),
                  ),
                ),
            
            
            
            
            
                TextButton(
                  onPressed: () {
                    
                  },
                  child: ListTile(
                    tileColor: Colors.white,
                    title: TextField(
                      decoration: const InputDecoration(
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
          ),
        ));
  }
}
