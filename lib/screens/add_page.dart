import 'package:exam_project/features/onboarding/presentation/provider/note_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDialog();
    });
  }

  void _showDialog() {
    TextEditingController controller = TextEditingController();
    final provider = Provider.of<NoteProvider>(context, listen: false);

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text("Yangi zametka"),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            hintText: "Matn yozing...",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context); 
              Navigator.pop(context);
            },
            child: const Text("Bekor"),
          ),
          ElevatedButton(
            onPressed: () {
              if (controller.text.isNotEmpty) {
                provider.addNote(controller.text);
              }
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: const Text("Saqlash"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text("Dialog ochilmoqda..."),
      ),
    );
  }
}