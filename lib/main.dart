import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/simple_bloc_observer.dart';
import 'package:notes/views/edit_note_view.dart';
import 'package:notes/views/notes_view.dart';
import 'package:bloc/bloc.dart';

void main() async{
  await Hive.initFlutter();

  Bloc.observer = SimpleBolcObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>('NotesBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        initialRoute: NotesView.id,
        routes: {
          NotesView.id: (context) => const NotesView(),
          //EditNoteView.id: (context) => const EditNoteView(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
         // scaffoldBackgroundColor: Colors.black,
        ),
      ),
    );
  }
}