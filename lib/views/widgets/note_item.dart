import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNoteView();
            },
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffffcd7a),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Build oyur career with omar ameer.",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 22,
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 28),
              child: Text(
                "Aug15, 2023",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
