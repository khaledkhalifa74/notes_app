import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/add_note_cubit/add_note_state.dart';
import 'package:bloc/bloc.dart';
import 'package:notes/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState>{
  AddNoteCubit() : super (AddNoteInitial());

  Color color = Colors.orange;
  addNote(NoteModel note)async{

    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('NotesBox');
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}