import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

import 'custom_main_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 38,
        right: 20,
        left: 20,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
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
            const SizedBox(
              height: 50,
            ),
            CustomMainButton(
              text: "Add Note",
              onPressed: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: CustomMainButton(
                text: "Cancel",
                onPressed: () {
                  Navigator.pop(context);
                },
                color: const Color(0xff8D070F),
                height: 45,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
