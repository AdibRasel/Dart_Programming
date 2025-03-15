import 'package:flutter/material.dart';
import 'package:shaminibazar/TabBarScreen/CheckboxRadioButtonProgressBar.dart';
import 'package:shaminibazar/TabBarScreen/MyDesign.dart';
import 'package:shaminibazar/TabBarScreen/Navigation.dart';
import 'package:shaminibazar/TabBarScreen/Slider.dart';
import 'package:shaminibazar/TabBarScreen/Snackbar.dart';
import 'package:shaminibazar/TabBarScreen/Switch.dart';
import 'package:shaminibazar/TabBarScreen/Tooltip.dart';

import 'TabBarScreen/AspectRatioRespon.dart';
import 'TabBarScreen/Expanded.dart';
import 'TabBarScreen/Flexiable.dart';
import 'TabBarScreen/FlutterAnimation.dart';
import 'TabBarScreen/FlutterCalendar.dart';
import 'TabBarScreen/FlutterWork.dart';
import 'TabBarScreen/FractionalySizedBox.dart';
import 'TabBarScreen/GridViewExamples.dart';
import 'TabBarScreen/HomeTabBarScreen.dart';
import 'TabBarScreen/LayoutBuilder.dart';
import 'TabBarScreen/ListViewExamples.dart';
import 'TabBarScreen/MediaQuery.dart';
import 'TabBarScreen/Person.dart';
import 'TabBarScreen/ResponsiveGrid.dart';
import 'TabBarScreen/ResponsiveGridBootstrap.dart';
import 'TabBarScreen/SingleChildScrollView.dart';
import 'TabBarScreen/Slider_Image.dart';
import 'TabBarScreen/StyleMediaQuery.dart';
import 'TabBarScreen/Table.dart';
import 'TabBarScreen/ToastNotification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatefulWidget {
  const HomeActivity({super.key});

  @override
  _HomeActivityState createState() => _HomeActivityState();
}

class _HomeActivityState extends State<HomeActivity> {
  bool isSwitched1 = false;

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
                      MaterialPageRoute(builder: (context) => Mydesign()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('My Design'),
                    trailing: Icon(Icons.work),
                  ),
                ),




                // ====================================== Response Start ======================================
                Text('Response Start', style: TextStyle(fontSize: 20, color: Colors.white)),	
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AspectRatioRespon()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Aspect Ratio '),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FractionalySizedBox()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Fractionaly Sized Box'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LayoutBuilders()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Layout Builder'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SingleChildScrollViews()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Single Child Scroll View'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Expandeds()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Expanded'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Flexiables()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Flexiable'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MediaQuerys()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Media Query'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Stylemediaquery()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Style Media Query'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResponsiveGridBootstrap()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Responsive Grid Bootstrap'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResponsiveGrid()),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Responsive Grid'),
                    trailing: Icon(Icons.work),
                  ),
                ),

                Text('Response End', style: TextStyle(fontSize: 20, color: Colors.white)),	




                // ====================================== Response End ======================================





                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Flutterwork()),
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
                          builder: (context) =>
                              CheckboxRadioButtonProgressBar()),
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
                      MaterialPageRoute(builder: (context) => Snackbar()),
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
                      MaterialPageRoute(builder: (context) => Tooltips()),
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
                      MaterialPageRoute(builder: (context) => Sliders()),
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
                        builder: (context) =>
                            const InfiniteCarouselsPage(), // Ensure you're using const if it's a const constructor
                      ),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Slider Image'),
                    trailing: Icon(Icons.work),
                  ),
                ),


                  
                  Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FlutterSwitch(),
                            ),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          color: Colors.white,
                          child: const ListTile(
                            title: Text('Switch'),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: SwitchListTile(
                        title: const Text('Simple Switch'),
                        value: isSwitched1,
                        onChanged: (value) {
                          setState(() {
                            isSwitched1 = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),



                // TextButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (context) =>
                //           SimpleBarChart(), // Ensure you're using const if it's a const constructor
                //       ),
                //     );
                //   },
                //   child: const ListTile(
                //     tileColor: Colors.white,
                //     title: Text('Flutter Charts'),
                //     trailing: Icon(Icons.work),
                //   ),
                // ),
                
                
                
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          Navigation(), // Ensure you're using const if it's a const constructor
                      ),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Navigation Bar'),
                    trailing: Icon(Icons.work),
                  ),
                ),

                
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          FlutterTable(), // Ensure you're using const if it's a const constructor
                      ),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Table'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                
                
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          FlutterCalendar(), // Ensure you're using const if it's a const constructor
                      ),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Flutter Calendar'),
                    trailing: Icon(Icons.work),
                  ),
                ),
                
                
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                          HeroAnimation(title: 'Animation',), // Ensure you're using const if it's a const constructor
                      ),
                    );
                  },
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text('Flutter Animation'),
                    trailing: Icon(Icons.work),
                  ),
                ),






                TextButton(
                  onPressed: () {},
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
