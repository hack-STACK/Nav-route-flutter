import 'package:flutter/material.dart';
import 'package:navigatorpush/pages/home-page.dart';
import 'package:navigatorpush/pages/item-page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Homepage(),
        '/item': (context) => ItemPage(),
      },
    );
  }
}

class page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
       
    return InkWell(
     
      child: Container(
        // Your InkWell child widget or any other UI elements.
        // Example:
        padding: EdgeInsets.all(16),
        child: const Text(
          'Tap to navigate to Item Page',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
