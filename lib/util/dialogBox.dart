import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/util/mybutton.dart';

class Dialogbox extends StatefulWidget {
  final TextEditingController controller;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  Dialogbox({
    super.key,
    required this.controller,
    required this.onSave,
    required this.onCancel,
  });
  @override
  State<Dialogbox> createState() => _DialogboxState();
}

class _DialogboxState extends State<Dialogbox> {
  // Added semicolon at the end
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.deepPurple[100],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Input field
            TextField(
              controller: widget.controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                hintText: 'Add a new task',
              ),
            ),
            // Buttons (Save and Cancel)
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Mybutton(
                    text: 'save',
                    onPressed: widget.onSave,
                  ),
                  SizedBox(width: 50),
                  Mybutton(
                    text: 'cancel',
                    onPressed: widget.onCancel,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
