import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/edit_note_view.dart';

import '../../models/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    Color baseColor = Color(note.color);
    Color greyColor = Colors.grey;
    Color? blendedColor = Color.lerp(baseColor, greyColor, 0.35);
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: note);
            },
          ),
        );
      },
      child: Stack(
        children: [
          ClipPath(
            clipper: NotePaperClipper(45),
            child: Container(
              padding: const EdgeInsets.only(
                top: 24,
                bottom: 24,
                left: 10,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
                color: Color(note.color),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ListTile(
                    title: Text(
                      note.title,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 27,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        note.subTitle,
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
                      onPressed: () {
                        note.delete();
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                        // showErrorSnackBar(context, "Note successfully deleted");
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 28),
                    child: Text(
                      note.date,
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: ClipPath(
              clipper: NotePaperClipper(45),
              child: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  color: blendedColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class NotePaperClipper extends CustomClipper<Path> {
  final double cutCornerSize;

  NotePaperClipper(this.cutCornerSize);

  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(size.width - cutCornerSize, 0)
      ..lineTo(size.width, cutCornerSize)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
