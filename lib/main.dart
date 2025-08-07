import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(TuitionFinderApp());
}

class TuitionFinderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuition Finder',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
