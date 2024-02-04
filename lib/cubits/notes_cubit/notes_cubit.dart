import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/add_note_cubit/add_note_state.dart';
import 'package:bloc/bloc.dart';
import 'package:notes/cubits/notes_cubit/notes_state.dart';
import 'package:notes/models/note_model.dart';

class NotesCubit extends Cubit<NotesState>{
  NotesCubit() : super (NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes()async{
      var notesBox = Hive.box<NoteModel>('NotesBox');
      notes = notesBox.values.toList();
      emit(NotesSuccess());
  }
}