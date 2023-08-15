import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'note_item.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: [
          CustomAppBar(),
          SizedBox(
            height: 22,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}
