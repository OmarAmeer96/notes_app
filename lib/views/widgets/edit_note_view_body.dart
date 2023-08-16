import 'package:flutter/material.dart';
import 'package:notes_app/models/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomAppBar(
            icon: Icons.done,
            title: "Edit Note",
            onPressed: () {},
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomTextField(
            hintText: "Title",
          ),
          const SizedBox(
            height: 24,
          ),
          const CustomTextField(
            hintText: "Content",
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
