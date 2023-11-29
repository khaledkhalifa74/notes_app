import 'package:flutter/material.dart';
import 'package:notes/widgets/edit_note_body.dart';
class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
            EditNoteBody(),
          ],
      ),
    );
  }
}
