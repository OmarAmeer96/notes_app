import 'package:flutter/material.dart';
import 'add_note_form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: 38,
        right: 20,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
