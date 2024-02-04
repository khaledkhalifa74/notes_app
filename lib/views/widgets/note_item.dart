import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return EditNoteView(note: note);
            },
        ));
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 24,
        ),
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 16,
        ),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 8,
                ),
                child: Text(
                  note.subTitle,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 16,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: ()
                {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                icon: const Icon(
                  Icons.delete,
                  size: 30,
                ),
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 16,
              ),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Colors.black38,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
