import 'package:flutter/material.dart'; // Flutter এর Material Design লাইব্রেরি ইমপোর্ট করা হয়েছে

// অ্যাপ্লিকেশনের এন্ট্রি পয়েন্ট
main() {
  runApp(const MyApp()); // MyApp ক্লাসকে রান করা হচ্ছে, এটি অ্যাপ্লিকেশনের মূল UI শুরু করবে
}


// StatelessWidget এর মাধ্যমে MyApp ক্লাস তৈরি করা হয়েছে
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor এর মাধ্যমে MyApp ক্লাসের অবজেক্ট তৈরি করা হয়েছে
  
  // build() মেথড ব্যবহার করে UI তৈরি করা হবে
  @override
  Widget build(BuildContext context) {

    // MaterialApp হল অ্যাপ্লিকেশনের মূল রুট উইজেট
    return MaterialApp( // Theme ব্যবহার করার সময় const ব্যবহার করা যাবে না। 
      theme: ThemeData(primarySwatch: Colors.green,), // Theme এর প্রাইমারি কালার
      darkTheme: ThemeData(primarySwatch: Colors.amber), // Theme এর ডার্ক মোডের প্রাইমারি কালার
      color: Colors.green, // Theme এর কালার
      debugShowCheckedModeBanner: false, // ডিবাগ মোড ব্যানার দেখানো বন্ধ করা হয়েছে।
      home: HomeActivity(), // HomeActivity কে প্রধান স্ক্রিন হিসেবে সেট করা হয়েছে
    );

  }

}



// HomeActivity ক্লাস একটি StatelessWidget, যা মূল UI প্রদর্শন করে
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key}); // Constructor ব্যবহার করা হয়েছে HomeActivity অবজেক্ট তৈরি করতে

  // একটি বাটনের মাধ্যমে SnackBar প্রদর্শন করার জন্য একটি মেথড তৈরি করা হয়েছে
 MyButton (Message, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("This is a SnackBar > $Message"),)
    );
  }


  @override
  Widget build(BuildContext context) {

    // Scaffold ব্যবহার করে একটি পূর্ণাঙ্গ স্ক্রিন তৈরি করা হয়েছে
    return Scaffold(

      appBar: AppBar(
        title: const Text("App Title"),
        backgroundColor: Colors.green,         
        actions: [
          IconButton(onPressed: (){MyButton("This is alart", context);},icon: Icon(Icons.comment, color: Colors.white,),),
          IconButton(onPressed: (){},icon: Icon(Icons.add,  color: Colors.white,),),
          IconButton(onPressed: (){},icon: Icon(Icons.edit,  color: Colors.white,),),
          IconButton(onPressed: (){},icon: Icon(Icons.fork_left,  color: Colors.white,),),
          IconButton(onPressed: (){},icon: Icon(Icons.email,  color: Colors.white,),),
        ],


      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.alarm_rounded),
        backgroundColor: Colors.green,
        onPressed: (){MyButton("Floating Action Alart", context);},
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Active বাটন+ফেইজ নির্দেশ করতে currentIndex ব্যবহার করা হয়েছে
        fixedColor: Colors.green, 
        backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
        ],
        onTap: (int index){
          if(index ==0){
            MyButton("Contact Page", context);
          }if(index ==1){
            MyButton("Home Page", context);
          }if(index ==2){
            MyButton("Settings Page", context);
          }
        },
      ),


      drawer: Drawer(
        child: ListView( // Drawer এর ভিতরে একটি ListView ব্যবহার করা করা লাগে। 
          
          children: [ // ListView এর ভিতরে children ব্যবহার করা লাগে। 

            // একটা অংশ হচ্ছে DrawerHeader, যা ড্রয়ারের শীর্ষক অংশ হিসেবে ব্যবহার করা হয়। 
            DrawerHeader(
              padding: EdgeInsets.all(0), // ড্রয়ার হেডারের প্যাডিং সেট করা হয়েছে।
              child: UserAccountsDrawerHeader( // text অথবা UserAccountDrawerHeader বা অন্য কিছু ব্যবহার করা যাবে।
                decoration: BoxDecoration(color: Colors.green), // background color হিসাবে কাজ করে। 
                accountName: Text("Rasel Hossain"),
                accountEmail: Text("adibrasel.2022@gmail.com"),	
                currentAccountPicture: Image.network("https://adibrasel.github.io/My_Portfolio/static/media/bannerImg.c6fef816103c81f5c150.png"),
              )
              
              ),

            ListTile( // ListTile এর ভিতরে একটি লিস্ট আইটেম তৈরি করা হয়েছে।
              title: Text("Home"), // ListTile এর ভিতরে একটা title দিতে হয়।
              leading: Icon(Icons.home), // ListTile এর ভিতরে একটা leading দিতে হয়।
              onTap: () => MyButton("Home Page", context), // ListTile এর ভিতরে একটা onTap দিতে হয়।
            ),
            ListTile( 
              title: Text("settings"), 
              leading: Icon(Icons.settings),
              onTap: () => MyButton("settings Page", context), 
            ),
            ListTile( 
              title: Text("person"), 
              leading: Icon(Icons.person),
              onTap: () => MyButton("person Page", context), 
            ),

          ],

        ),
      ),
     


      endDrawer: Drawer(
        child: ListView( // Drawer এর ভিতরে একটি ListView ব্যবহার করা করা লাগে। 
          
          children: [ // ListView এর ভিতরে children ব্যবহার করা লাগে। 

            // একটা অংশ হচ্ছে DrawerHeader, যা ড্রয়ারের শীর্ষক অংশ হিসেবে ব্যবহার করা হয়। 
            DrawerHeader(
              padding: EdgeInsets.all(0), // ড্রয়ার হেডারের প্যাডিং সেট করা হয়েছে।
              child: UserAccountsDrawerHeader( // text অথবা UserAccountDrawerHeader বা অন্য কিছু ব্যবহার করা যাবে।
                decoration: BoxDecoration(color: Colors.green), // background color হিসাবে কাজ করে। 
                accountName: Text("Rasel Hossain"),
                accountEmail: Text("adibrasel.2022@gmail.com"),	
                currentAccountPicture: Image.network("https://adibrasel.github.io/My_Portfolio/static/media/bannerImg.c6fef816103c81f5c150.png"),
              )
              
              ),

            ListTile( // ListTile এর ভিতরে একটি লিস্ট আইটেম তৈরি করা হয়েছে।
              title: Text("Home"), // ListTile এর ভিতরে একটা title দিতে হয়।
              leading: Icon(Icons.home), // ListTile এর ভিতরে একটা leading দিতে হয়।
              onTap: () => MyButton("Home Page", context), // ListTile এর ভিতরে একটা onTap দিতে হয়।
            ),
            ListTile( 
              title: Text("settings"), 
              leading: Icon(Icons.settings),
              onTap: () => MyButton("settings Page", context), 
            ),
            ListTile( 
              title: Text("person"), 
              leading: Icon(Icons.person),
              onTap: () => MyButton("person Page", context), 
            ),

          ],

        ),
      ),
     









      body: Container(
        height: 240,
        width: 240,
        alignment: Alignment.center,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black, width: 2),
        ),
        child: Image.network("https://adibrasel.github.io/My_Portfolio/static/media/bannerImg.c6fef816103c81f5c150.png"),

      )


    );

  }
}
