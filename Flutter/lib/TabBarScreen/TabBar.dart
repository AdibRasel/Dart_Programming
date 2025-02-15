














import 'package:flutter/material.dart'; // Flutter এর Material UI লাইব্রেরি ইম্পোর্ট করা হয়েছে।

class Tabbar extends StatelessWidget { // এটি একটি StatelessWidget, যেটা পরিবর্তনশীল নয়।
  const Tabbar({super.key}); // Constructor, যা মূল ক্লাসের ইনিশিয়াল ভ্যালু সেট করে।

  @override
  Widget build(BuildContext context) { // build() মেথড যা UI রিটার্ন করে।
    return DefaultTabController( // এটি TabBar ব্যবহারের জন্য একটি ডিফল্ট কন্ট্রোলার দেয়।
      length: 3, // এখানে আমরা ৩টি ট্যাব ব্যবহার করবো।
      child: Scaffold( // এটি Flutter এর একটি মূল UI কন্টেইনার।
        appBar: AppBar( // অ্যাপবার তৈরি করা হয়েছে।
          title: const Text('TabBar Example'), // অ্যাপবারের টাইটেল সেট করা হয়েছে।
          bottom: const TabBar( // এখানে TabBar যোগ করা হয়েছে।
            tabs: [ // TabBar এর জন্য ট্যাবের লিস্ট তৈরি করা হয়েছে।
              Tab(icon: Icon(Icons.home), text: "Home"), // প্রথম ট্যাব (Home)।
              Tab(icon: Icon(Icons.person), text: "Profile"), // দ্বিতীয় ট্যাব (Profile)।
              Tab(icon: Icon(Icons.settings), text: "Settings"), // তৃতীয় ট্যাব (Settings)।
            ],
          ),
        ),
        body: const TabBarView( // ট্যাবের কন্টেন্ট দেখানোর জন্য TabBarView ব্যবহার করা হয়েছে।
          children: [ // এখানে প্রতিটি ট্যাবের জন্য ভিন্ন ভিন্ন UI দেওয়া হয়েছে।
            Center(child: Text('Home Screen')), // Home ট্যাবের কন্টেন্ট।
            Center(child: Text('Profile Screen')), // Profile ট্যাবের কন্টেন্ট।
            Center(child: Text('Settings Screen')), // Settings ট্যাবের কন্টেন্ট।
          ],
        ),
      ),
    );
  }
}
