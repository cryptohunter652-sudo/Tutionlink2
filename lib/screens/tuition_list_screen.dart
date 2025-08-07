import 'package:flutter/material.dart';
import '../models/tuition.dart';

class TuitionListScreen extends StatelessWidget {
  final List<Tuition> sampleTuitions = [
    Tuition(title: "Math Tuition Needed", description: "Class 8 student, 3 days/week."),
    Tuition(title: "Physics Teacher", description: "Urgent tutor for HSC physics."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Available Tuitions")),
      body: ListView.builder(
        itemCount: sampleTuitions.length,
        itemBuilder: (context, index) {
          final tuition = sampleTuitions[index];
          return ListTile(
            title: Text(tuition.title),
            subtitle: Text(tuition.description),
          );
        },
      ),
    );
  }
}
