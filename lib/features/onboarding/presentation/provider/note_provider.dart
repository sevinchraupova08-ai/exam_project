import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  List<String> notes = [];

  void addNote(String text) {
    notes.add(text);
    notifyListeners();
  }
}