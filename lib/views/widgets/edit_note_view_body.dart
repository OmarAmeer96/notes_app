import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.done,
          ),
        ],
      ),
    );
  }
}
