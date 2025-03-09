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
                const SizedBox(
                  height: 20,
                ),
                const LinearProgressIndicator(
                  color: Colors.red,
                  backgroundColor: Colors.grey,
                  minHeight: 5,
                ),
                const SizedBox(
                  height: 20,
                ),
                const LinearProgressIndicator(),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.account_circle,
                        size: 60, color: Colors.black), // Profile Icon
                    Icon(Icons.home,
                        size: 60, color: Colors.black), // home Icon
                    Icon(Icons.contact_emergency,
                        size: 60,
                        color: Colors.black), // contact_emergency Icon
                    Icon(Icons.wallet,
                        size: 60, color: Colors.black), // wallet Icon
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
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
                        Shadow(
                            color: Colors.blueAccent,
                            offset: Offset(2, 1),
                            blurRadius: 10)
                      ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'User Name',
                    hintText: 'Enter Your Name',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    )),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text('Text Button'),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {},
                  child: const Text('Outlined Button'),
                ),
                const SizedBox(height: 10),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {},
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DropdownButton<String>(
                      value: 'Option 1',
                      items: const [
                        DropdownMenuItem(
                            value: 'Option 1', child: Text('Option 1')),
                        DropdownMenuItem(
                            value: 'Option 2', child: Text('Option 2')),
                      ],
                      onChanged: (value) {},
                    ),
                    const SizedBox(height: 10),
                    PopupMenuButton<String>(
                      onSelected: (value) {},
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                            value: 'Item 1', child: Text('Item 1')),
                        const PopupMenuItem(
                            value: 'Item 2', child: Text('Item 2')),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Text('Custom Button',
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
                const SizedBox(height: 20),
                Stack(
                  fit: StackFit.passthrough,
                  children: <Widget>[
                    Container(
                      // সবার নিচে থাকবে।
                      height: 250,
                      width: 250,
                      color: Colors.red,
                      child: const Text(
                        'সবার নিচে থাকবে।',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Container(
                      // তার উপরে থাকবে।
                      height: 200,
                      width: 200,
                      color: Colors.green,
                      child: const Text(
                        'তার উপরে থাকবে।',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Positioned(
                      // স্পেসিফাইড পজিশনে থাকবে। সিরিয়াল অনুযায়ি উপরে থাকবে।
                      top: 0,
                      right: 20,
                      child: Container(
                        height: 100,
                        width: 150,
                        color: Colors.lightGreenAccent,
                        child: const Center(
                          child: Text(
                            'স্পেসিফাইড পজিশনে থাকবে। সিরিয়াল অনুযায়ি উপরে থাকবে।',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // // স্পেসিফাইড পজিশনে থাকবে। সিরিয়াল অনুযায়ি উপরে থাকবে।
                      top: 30,
                      right: 10,
                      child: Container(
                        height: 150,
                        width: 150,
                        color: Colors.orange,
                        child: const Center(
                          child: Text(
                            'স্পেসিফাইড পজিশনে থাকবে। সিরিয়াল অনুযায়ি উপরে থাকবে।',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),



                const SizedBox(height: 20),
                MyCustomForm(),




              ],
            ),
          ),
        ),
      ),
    );
  }
}





class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[



          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Enter your full name',
              labelText: 'Name',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),



          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.phone),
              hintText: 'Enter a phone number',
              labelText: 'Phone',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter valid phone number';
              }
              return null;
            },
          ),




          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              hintText: 'Enter your date of birth',
              labelText: 'Dob',
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter valid date';
              }
              return null;
            },
          ),



          Container(
            padding: const EdgeInsets.only(left: 150.0, top: 40.0),
            child: ElevatedButton(
              child: const Text('Submit'),
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            )
          ),

              
        ],
      ),
    );
  }
}
