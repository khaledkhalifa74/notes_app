import 'package:flutter/material.dart';
import 'package:notes/widgets/notes_view_body.dart';
class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
          splashColor: Colors.grey,
          shape: const CircleBorder(),
          onPressed: (){},
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
      ),
      body: const NotesViewBody(),
    );
  }
}
