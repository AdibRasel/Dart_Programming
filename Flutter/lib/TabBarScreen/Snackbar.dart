import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});


  void showSnackbar(BuildContext context, String message, {String? actionLabel, VoidCallback? onAction}) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      action: actionLabel != null
          ? SnackBarAction(
              label: actionLabel,
              onPressed: onAction ?? () {},
            )
          : null,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar Examples')),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            ElevatedButton(
              onPressed: () => showSnackbar(context, 'Simple Snackbar!'),
              child: const Text('Show Simple Snackbar'),
            ),


            const SizedBox(height: 10),
            
            
            ElevatedButton(
              onPressed: () => showSnackbar(
                context,
                'Snackbar with Action!',
                actionLabel: 'Undo',
                onAction: () {},
              ),
              child: const Text('Show Snackbar with Action'),
            ),


            const SizedBox(height: 10),
            
            
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Custom Snackbar!'),
                  backgroundColor: Colors.blue,
                  behavior: SnackBarBehavior.floating,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  duration: const Duration(seconds: 4),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show Custom Snackbar'),
            ),


            const SizedBox(height: 10),
           
           
           ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Long Duration Snackbar!'),
                  duration: const Duration(seconds: 10),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Show Long Duration Snackbar'),
            ),


            
          ],
        ),
      ),
    );
  }
}
