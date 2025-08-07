import 'package:flutter/material.dart';
import '../models/tuition.dart';

class PostTuitionScreen extends StatefulWidget {
  @override
  _PostTuitionScreenState createState() => _PostTuitionScreenState();
}

class _PostTuitionScreenState extends State<PostTuitionScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();

  List<Tuition> postedTuitions = [];

  void _postTuition() {
    if (_formKey.currentState!.validate()) {
      final tuition = Tuition(
        title: _titleController.text,
        description: _descriptionController.text,
      );

      setState(() {
        postedTuitions.add(tuition);
      });

      _titleController.clear();
      _descriptionController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Tuition Posted!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Tuition'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) => value!.isEmpty ? 'Enter a title' : null,
              ),
              TextFormField(
                controller: _descriptionController,
                decoration: InputDecoration(labelText: 'Description'),
                validator: (value) => value!.isEmpty ? 'Enter a description' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _postTuition,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
