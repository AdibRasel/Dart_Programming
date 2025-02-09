import 'package:flutter/material.dart'; // Flutter এর Material Design লাইব্রেরি ইমপোর্ট করা হয়েছে

// অ্যাপ্লিকেশনের এন্ট্রি পয়েন্ট
main() {
  runApp(
      const MyApp()); // MyApp ক্লাসকে রান করা হচ্ছে, এটি অ্যাপ্লিকেশনের মূল UI শুরু করবে
}

// StatelessWidget এর মাধ্যমে MyApp ক্লাস তৈরি করা হয়েছে
class MyApp extends StatelessWidget {
  const MyApp(
      {super.key}); // Constructor এর মাধ্যমে MyApp ক্লাসের অবজেক্ট তৈরি করা হয়েছে

  // build() মেথড ব্যবহার করে UI তৈরি করা হবে
  @override
  Widget build(BuildContext context) {
    // MaterialApp হল অ্যাপ্লিকেশনের মূল রুট উইজেট
    return MaterialApp(
      // Theme ব্যবহার করার সময় const ব্যবহার করা যাবে না।
      theme: ThemeData(
        primarySwatch: Colors.green,
      ), // Theme এর প্রাইমারি কালার
      darkTheme: ThemeData(
          primarySwatch: Colors.amber), // Theme এর ডার্ক মোডের প্রাইমারি কালার
      color: Colors.green, // Theme এর কালার
      debugShowCheckedModeBanner:
          false, // ডিবাগ মোড ব্যানার দেখানো বন্ধ করা হয়েছে।
      home:
          HomeActivity(), // HomeActivity কে প্রধান স্ক্রিন হিসেবে সেট করা হয়েছে
    );
  }
}

// HomeActivity ক্লাস একটি StatelessWidget, যা মূল UI প্রদর্শন করে
class HomeActivity extends StatelessWidget {
  HomeActivity(
      {super.key}); // Constructor ব্যবহার করা হয়েছে HomeActivity অবজেক্ট তৈরি করতে

  // একটি বাটনের মাধ্যমে SnackBar প্রদর্শন করার জন্য একটি মেথড তৈরি করা হয়েছে
  MyButton(Message, context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("This is a SnackBar > $Message"),
    ));
  }

  MyAlertDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Expanded(
            child: AlertDialog(
              title: const Text("Alert"),
              content: const Text("Do you want do delete "),
              actions: [
                // এই বাটনগুলি দ্বারা বাটনের কাজ নির্ধারণ করা হয়েছে
                TextButton(
                  onPressed: () {
                    MyButton("Yes", context); // একটি SnackBar প্রদর্শন করার পর ডায়লগ বন্ধ করার কোড করা হয়েছে।
                    Navigator.of(context).pop(); // ডায়ালগ বন্ধ করা হয়েছে
                  },
                  child: const Text("Yes"),
                ),
                // এই বাটনগুলি দ্বারা বাটনের কাজ নির্ধারণ করা হয়েছে
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // ডায়ালগ বন্ধ করা হয়েছে
                  },
                  child: const Text("No"),
                ),
              ],
            ),
          );
        });
    }

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size(double.infinity, 50),
      padding: const EdgeInsets.all(10),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white, // Text Color
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
    );

    // Scaffold ব্যবহার করে একটি পূর্ণাঙ্গ স্ক্রিন তৈরি করা হয়েছে
    return Scaffold(
        appBar: AppBar(
          title: const Text("App Title"),
          backgroundColor: Colors.green,
          actions: [
            IconButton(
              onPressed: () {
                MyButton("This is alart", context);
              },
              icon: const Icon(
                Icons.comment,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.fork_left,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.email,
                color: Colors.white,
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: const Icon(Icons.alarm_rounded),
          backgroundColor: Colors.green,
          onPressed: () {
            MyButton("Floating Action Alart", context);
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex:
              1, // Active বাটন+ফেইজ নির্দেশ করতে currentIndex ব্যবহার করা হয়েছে
          fixedColor: Colors.green,
          backgroundColor: Colors.amber,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.contacts), label: "Contact"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
            const BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
          onTap: (int index) {
            if (index == 0) {
              MyButton("Contact Page", context);
            }
            if (index == 1) {
              MyButton("Home Page", context);
            }
            if (index == 2) {
              MyButton("Settings Page", context);
            }
          },
        ),
        drawer: Drawer(
          child: ListView(
            // Drawer এর ভিতরে একটি ListView ব্যবহার করা করা লাগে।

            children: [
              // ListView এর ভিতরে children ব্যবহার করা লাগে।

              // একটা অংশ হচ্ছে DrawerHeader, যা ড্রয়ারের শীর্ষক অংশ হিসেবে ব্যবহার করা হয়।
              DrawerHeader(
                  padding: const EdgeInsets.all(
                      0), // ড্রয়ার হেডারের প্যাডিং সেট করা হয়েছে।
                  child: UserAccountsDrawerHeader(
                    // text অথবা UserAccountDrawerHeader বা অন্য কিছু ব্যবহার করা যাবে।
                    decoration: const BoxDecoration(
                        color:
                            Colors.green), // background color হিসাবে কাজ করে।
                    accountName: const Text("Rasel Hossain"),
                    accountEmail: const Text("adibrasel.2022@gmail.com"),
                    currentAccountPicture: Image.network(
                        "https://adibrasel.github.io/My_Portfolio/static/media/bannerImg.c6fef816103c81f5c150.png"),
                  )),

              ListTile(
                // ListTile এর ভিতরে একটি লিস্ট আইটেম তৈরি করা হয়েছে।
                title:
                    const Text("Home"), // ListTile এর ভিতরে একটা title দিতে হয়।
                leading: const Icon(
                    Icons.home), // ListTile এর ভিতরে একটা leading দিতে হয়।
                onTap: () => MyButton("Home Page",
                    context), // ListTile এর ভিতরে একটা onTap দিতে হয়।
              ),
              ListTile(
                title: const Text("settings"),
                leading: const Icon(Icons.settings),
                onTap: () => MyButton("settings Page", context),
              ),
              ListTile(
                title: const Text("person"),
                leading: const Icon(Icons.person),
                onTap: () => MyButton("person Page", context),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            // Drawer এর ভিতরে একটি ListView ব্যবহার করা করা লাগে।

            children: [
              // ListView এর ভিতরে children ব্যবহার করা লাগে।

              // একটা অংশ হচ্ছে DrawerHeader, যা ড্রয়ারের শীর্ষক অংশ হিসেবে ব্যবহার করা হয়।
              DrawerHeader(
                  padding: const EdgeInsets.all(
                      0), // ড্রয়ার হেডারের প্যাডিং সেট করা হয়েছে।
                  child: UserAccountsDrawerHeader(
                    // text অথবা UserAccountDrawerHeader বা অন্য কিছু ব্যবহার করা যাবে।
                    decoration: const BoxDecoration(
                        color:
                            Colors.green), // background color হিসাবে কাজ করে।
                    accountName: const Text("Rasel Hossain"),
                    accountEmail: const Text("adibrasel.2022@gmail.com"),
                    currentAccountPicture: Image.network(
                        "https://adibrasel.github.io/My_Portfolio/static/media/bannerImg.c6fef816103c81f5c150.png"),
                  )),

              ListTile(
                // ListTile এর ভিতরে একটি লিস্ট আইটেম তৈরি করা হয়েছে।
                title:
                    const Text("Home"), // ListTile এর ভিতরে একটা title দিতে হয়।
                leading: const Icon(
                    Icons.home), // ListTile এর ভিতরে একটা leading দিতে হয়।
                onTap: () => MyButton("Home Page",
                    context), // ListTile এর ভিতরে একটা onTap দিতে হয়।
              ),
              ListTile(
                title: const Text("settings"),
                leading: const Icon(Icons.settings),
                onTap: () => MyButton("settings Page", context),
              ),
              ListTile(
                title: const Text("person"),
                leading: const Icon(Icons.person),
                onTap: () => MyButton("person Page", context),
              ),
            ],
          ),
        ),
        body: Center(


          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  labelText: "First Name",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  labelText: "Last Name",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  labelText: "Email Address",
                  labelStyle: TextStyle(color: Colors.green),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text("Submit"),
                style: buttonStyle,
              ),
            ),

            
            ],
          )

          
        ));
  }
}
