import 'package:flutter/material.dart';
import 'package:notes/widgets/note_item.dart';
class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context,index){
          return const NoteItem();
        },
      ),
    );
  }
}