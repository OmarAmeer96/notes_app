import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomAppBar(
            icon: Icons.done,
            title: "Edit Note",
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: "Title",
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hintText: "Content",
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
