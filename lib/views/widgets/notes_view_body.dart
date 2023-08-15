import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.search,
            title: "Notes",
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
