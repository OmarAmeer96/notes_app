import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: const Padding(
        padding: EdgeInsets.only(
          top: 38,
          right: 20,
          left: 20,
        ),
        child: SingleChildScrollView(
          child: AddNoteForm(),
        ),
      ),
    );
  }
}
