import 'package:flutter/material.dart';
import 'screens/home_screen.dart'; // Import the BudgetScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget Manager',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(), // HomeScreen as the initial screen
    );
  }
}
