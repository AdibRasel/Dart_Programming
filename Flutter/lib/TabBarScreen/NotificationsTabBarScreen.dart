import 'package:flutter/material.dart';

class Notificationstabbarscreen extends StatefulWidget {
  const Notificationstabbarscreen({super.key});

  @override
  State<Notificationstabbarscreen> createState() => _NotificationstabbarscreenState();
}

class _NotificationstabbarscreenState extends State<Notificationstabbarscreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Camera TabBar Screen'),
      ),
    );
  }
}