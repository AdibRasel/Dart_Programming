import 'package:flutter/material.dart';

class Tooltips extends StatelessWidget {
  const Tooltips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tooltip Examples'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Tooltip(
              message: 'This is an info icon',
              child: Icon(Icons.info, size: 50, color: Colors.blue),
            ),


            const SizedBox(height: 20),

            Tooltip(
              message: 'Click to add',
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
              textStyle: const TextStyle(color: Colors.white),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Add'),
              ),
            ),


            const SizedBox(height: 20),

            Tooltip(
              message: 'Search',
              waitDuration: const Duration(seconds: 1),
              showDuration: const Duration(seconds: 2),
              child: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
            ),


            const SizedBox(height: 20),


            Tooltip(
              message: 'Long Press for Details',
              child: GestureDetector(
                onLongPress: () {},
                child: const Icon(Icons.details, size: 50, color: Colors.green),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
