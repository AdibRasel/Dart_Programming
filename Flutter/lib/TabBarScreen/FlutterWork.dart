import 'package:flutter/material.dart';
import 'package:shaminibazar/TabBarScreen/TabBar.dart';

class Flutterwork extends StatelessWidget {
  const Flutterwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Work'),
      ),



















        drawer: Drawer( // ড্রয়ার তৈরি করা হয়েছে।
        child: ListView( // ড্রয়ারের মধ্যে Scrollable ListView ব্যবহার করা হয়েছে।
          padding: EdgeInsets.zero, // কোনো অতিরিক্ত প্যাডিং নেই।
          children: <Widget>[ // ড্রয়ারের ভিতরে বিভিন্ন উইজেট লিস্ট আকারে রাখা হয়েছে।
            const UserAccountsDrawerHeader( // এটি Drawer এর একটি উন্নত হেডার ডিজাইন।
              accountName: Text("Rasel Hossain"), // ইউজারের নাম।
              accountEmail: Text("rasel@example.com"), // ইউজারের ইমেইল।
              currentAccountPicture: CircleAvatar( // ইউজারের প্রোফাইল ছবি।
                backgroundImage: NetworkImage( // নেটওয়ার্ক থেকে ইমেজ লোড করা হচ্ছে।
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTbGlrZnZp504KYLjQaPcBcs0dJda--LogKw&s",
                ),
              ),
              decoration: BoxDecoration( // ব্যাকগ্রাউন্ডের জন্য ডিজাইন সেট করা হয়েছে।
                color: Colors.blue, // ব্যাকগ্রাউন্ড রঙ নীল করা হয়েছে।
              ),
            ),
            ListTile( // প্রথম মেনু আইটেম।
              leading: const Icon(Icons.home, color: Colors.blue), // আইকন যোগ করা হয়েছে।
              title: const Text('Home'), // টাইটেল।
              onTap: () { // যখন ক্লিক করা হবে তখন কাজ করবে।
                Navigator.pop(context); // ড্রয়ার বন্ধ করে দেবে।
              },
            ),
            ListTile( // দ্বিতীয় মেনু আইটেম।
              leading: const Icon(Icons.person, color: Colors.green), // আইকন যোগ করা হয়েছে।
              title: const Text('Profile'), // টাইটেল।
              onTap: () { // যখন ক্লিক করা হবে তখন কাজ করবে।
                Navigator.pop(context); // ড্রয়ার বন্ধ করে দেবে।
              },
            ),
            ListTile( // তৃতীয় মেনু আইটেম।
              leading: const Icon(Icons.settings, color: Colors.grey), // আইকন যোগ করা হয়েছে।
              title: const Text('Settings'), // টাইটেল।
              onTap: () { // যখন ক্লিক করা হবে তখন কাজ করবে।
                Navigator.pop(context); // ড্রয়ার বন্ধ করে দেবে।
              },
            ),
            const Divider(), // একটি বিভাজক লাইন যোগ করা হয়েছে।
            ListTile( // চতুর্থ মেনু আইটেম।
              leading: const Icon(Icons.logout, color: Colors.red), // লগআউট আইকন।
              title: const Text('Logout'), // টাইটেল।
              onTap: () { // যখন ক্লিক করা হবে তখন কাজ করবে।
                Navigator.pop(context); // ড্রয়ার বন্ধ করে দেবে।
              },
            ),
          ],
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
          children: [
 
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    MyAlertDialog(context);
                  },
                  child: const Text("Show Alert Dialog"),
                ),
            
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                  
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                      builder: (context) => const Tabbar()),
                    );
                },
                child: const Text("Tab Bar Screen", style: TextStyle(color: Colors.white),),),
            
            
            
            
            
                const SizedBox(height: 20),
            
            
                const Text("প্রজেক্টে থাকা ইমেজ ফাইল থেকে শো করা হয়েছে।"),  
                Image.asset("assets/RaselHossain.jpeg",width: 100, height: 100,),
            
                const SizedBox(height: 20),
                const Text("নেটওয়ার্ক থেকে ইমেজ ফাইল থেকে শো করা হয়েছে।"),  
                Image.network("https://media.licdn.com/dms/image/v2/D5603AQG63RWxGLev_Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1720267295959?e=2147483647&v=beta&t=5y5Zt8VwOZfaK-AguVmV3rOrXPW0HHakYMDBkRnNK6Q" ,width: 100, height: 100,),
            
            
            
                Column(
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "প্রজেক্টে থাকা ইমেজ ফাইল থেকে শো করা হয়েছে।",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          "assets/RaselHossain.jpeg",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "নেটওয়ার্ক থেকে ইমেজ ফাইল থেকে শো করা হয়েছে।",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.network(
                          "https://media.licdn.com/dms/image/v2/D5603AQG63RWxGLev_Q/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1720267295959?e=2147483647&v=beta&t=5y5Zt8VwOZfaK-AguVmV3rOrXPW0HHakYMDBkRnNK6Q",
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                )
            
            
            
            
            
            
              ],
            ),
          ],
        ),
      ),
    );
  }
}

MyAlertDialog(context) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: const Text("Alert Dialog"),
            content: const Text("This is an alert dialog"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Close"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text("Ok"),
              ),
            ],
          ),
        );
      });
}
