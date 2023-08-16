import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;

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
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: "Content",
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}
