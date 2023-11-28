import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/notes_list_view.dart';
class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 70,
          ),
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: NotesListView(),
          )
        ],
      ),
    );
  }
}

