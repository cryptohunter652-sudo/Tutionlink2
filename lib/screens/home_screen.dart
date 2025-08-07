import 'package:flutter/material.dart';
import '../models/tuition.dart';
import '../providers/tuition_provider.dart';

class HomeScreen extends StatefulWidget {
  final TuitionProvider provider;

  HomeScreen({required this.provider});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final titleController = TextEditingController();
  final descController = TextEditingController();

  void _submit() {
    final title = titleController.text;
    final description = descController.text;

    if (title.isEmpty || description.isEmpty) return;

    widget.provider.addTuition(Tuition(title: title, description: description));
    titleController.clear();
    descController.clear();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Tuition posted!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Post Tuition')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: titleController, decoration: InputDecoration(labelText: 'Title')),
            TextField(controller: descController, decoration: InputDecoration(labelText: 'Description')),
            SizedBox(height: 10),
            ElevatedButton(onPressed: _submit, child: Text('Submit')),
          ],
        ),
      ),
    );
  }
}
