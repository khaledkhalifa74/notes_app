import 'package:flutter/cupertino.dart';
import 'package:notes/models/note_model.dart';

@immutable
abstract class NotesState{}

class NotesInitial extends NotesState{}
class NotesLoading extends NotesState{}
class NotesSuccess extends NotesState{
  // final List<NoteModel> notes;
  // NotesSuccess(this.notes);
}
