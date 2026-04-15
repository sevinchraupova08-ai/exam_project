import 'package:exam_project/features/onboarding/presentation/provider/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'add_page.dart';

class home_pagee extends StatelessWidget {
  const home_pagee({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<NoteProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Zametkalar")),
      body: ListView.builder(
        itemCount: provider.notes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(provider.notes[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const AddPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}