import 'package:flutter/material.dart';
import 'providers/tuition_provider.dart';
import 'screens/home_screen.dart';
import 'screens/tuition_list_screen.dart';

void main() {
  runApp(TuitionApp());
}

class TuitionApp extends StatelessWidget {
  final TuitionProvider provider = TuitionProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tuition Finder',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MainMenu(provider: provider),
    );
  }
}

class MainMenu extends StatelessWidget {
  final TuitionProvider provider;

  MainMenu({required this.provider});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tuition Finder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Post Tuition'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => HomeScreen(provider: provider),
                ));
              },
            ),
            ElevatedButton(
              child: Text('View Tuitions'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (_) => TuitionListScreen(provider: provider),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
