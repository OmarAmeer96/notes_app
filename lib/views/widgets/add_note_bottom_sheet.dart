import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

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
      child: Column(
        children: [
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
