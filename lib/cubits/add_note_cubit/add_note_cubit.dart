import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/add_note_cubit/add_note_state.dart';
import 'package:bloc/bloc.dart';
import 'package:notes/models/note_model.dart';

class NotesCubit extends Cubit<AddNoteState>{
  NotesCubit() : super (AddNoteInitial());

  addNote(NoteModel note)async{
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>('NotesBox');
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}