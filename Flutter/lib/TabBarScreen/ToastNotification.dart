import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastNotification extends StatelessWidget {
  const ToastNotification({super.key});

  void showToast(String message, Color bgColor, Color textColor) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: bgColor,
      textColor: textColor,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast Notification Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showToast('Success! Operation completed.', Colors.green, Colors.white),
              child: const Text('Show Success Toast'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => showToast('Error! Something went wrong.', Colors.red, Colors.white),
              child: const Text('Show Error Toast'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => showToast('Warning! Check your input.', Colors.orange, Colors.black),
              child: const Text('Show Warning Toast'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => showToast('Info: This is an information message.', Colors.blue, Colors.white),
              child: const Text('Show Info Toast'),
            ),
          ],
        ),
      ),
    );
  }
}
