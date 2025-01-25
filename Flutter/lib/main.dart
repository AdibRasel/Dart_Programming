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
      theme: ThemeData(primarySwatch: Colors.green), // Theme এর প্রাইমারি কালার
      darkTheme: ThemeData(primarySwatch: Colors.amber), // Theme এর ডার্ক মোডের প্রাইমারি কালার
      color: Colors.blue, // Theme এর কালার
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

    );

  }
}
