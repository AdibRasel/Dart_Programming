import 'package:flutter/material.dart';

class Profiletabbarscreen extends StatefulWidget {
  const Profiletabbarscreen({super.key});

  @override
  State<Profiletabbarscreen> createState() => _ProfiletabbarscreenState();
}

class _ProfiletabbarscreenState extends State<Profiletabbarscreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        title: const Text('Profile tab bar screen'),
      ),

      body: Center(


        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const CircularProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey,
                  strokeWidth: 5,
                ),
          
          
                const SizedBox(height: 20,),
          
                const LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey,
                  minHeight: 5,
                ),
          
                const SizedBox(height: 20,),
          
          
                
                const LinearProgressIndicator(),
          
          
                const SizedBox(height: 20,),
          
          
          
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.account_circle, size: 60, color: Colors.black), // Profile Icon
                    Icon(Icons.home, size: 60, color: Colors.black), // home Icon
                    Icon(Icons.contact_emergency, size: 60, color: Colors.black), // contact_emergency Icon
                    Icon(Icons.wallet, size: 60, color: Colors.black), // wallet Icon
                  ],
                ),
          
          
                const SizedBox(height: 20,),
          
          
          
          
          
          
                const Text(  
                "Hello World! This is a Text Widget.",  
                  style: TextStyle(  
                    fontSize: 35,  
                    color: Colors.purple,  
                    fontWeight: FontWeight.w700,  
                    fontStyle: FontStyle.italic,  
                    letterSpacing: 8,  
                    wordSpacing: 20,  
                    backgroundColor: Colors.yellow,  
                    shadows: [  
                      Shadow(color: Colors.blueAccent, offset: Offset(2,1), blurRadius:10)  
                    ]  
                  ),  
                ),
          
                const SizedBox(height: 20,),
          





                const TextField(  
                  decoration: InputDecoration(  
                    border: OutlineInputBorder(),  
                    labelText: 'User Name',  
                    hintText: 'Enter Your Name',  
                  ),  
                ),
                const SizedBox(height: 20,),
                const TextField(  
                  obscureText: true,  
                  decoration: InputDecoration(  
                    border: OutlineInputBorder(),  
                    labelText: 'Password',  
                    hintText: 'Enter Password',  
                  )
                ),   





                ElevatedButton(
                  onPressed: () {},
                  child: Text('Elevated Button'),
                ),

                const SizedBox(height: 10),

                TextButton(
                  onPressed: () {},
                  child: Text('Text Button'),
                ),

                const SizedBox(height: 10),

                OutlinedButton(
                  onPressed: () {},
                  child: Text('Outlined Button'),
                ),

                const SizedBox(height: 10),

                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.thumb_up),
                ),

                const SizedBox(height: 10),

                FloatingActionButton(
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),

                const SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton<String>(
                  value: 'Option 1',
                  items: [
                    DropdownMenuItem(value: 'Option 1', child: Text('Option 1')),
                    DropdownMenuItem(value: 'Option 2', child: Text('Option 2')),
                  ],
                  onChanged: (value) {},
                ),

                const SizedBox(height: 10),

                PopupMenuButton<String>(
                  onSelected: (value) {},
                  itemBuilder: (context) => [
                    PopupMenuItem(value: 'Item 1', child: Text('Item 1')),
                    PopupMenuItem(value: 'Item 2', child: Text('Item 2')),
                  ],
                ),
                  ],
                ),

                const SizedBox(height: 10),

                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text('Custom Button', style: TextStyle(color: Colors.white)),
                  ),
                ),

          
          
          
          
          
              ],
            ),
          ),
        ),









      ),



     );
  }
}