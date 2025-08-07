import 'package:flutter/material.dart';
import '../providers/tuition_provider.dart';

class TuitionListScreen extends StatelessWidget {
  final TuitionProvider provider;

  TuitionListScreen({required this.provider});

  @override
  Widget build(BuildContext context) {
    final tuitions = provider.tuitions;

    return Scaffold(
      appBar: AppBar(title: Text('Available Tuitions')),
      body: ListView.builder(
        itemCount: tuitions.length,
        itemBuilder: (ctx, index) {
          final tuition = tuitions[index];
          return ListTile(
            title: Text(tuition.title),
            subtitle: Text(tuition.description),
          );
        },
      ),
    );
  }
}
