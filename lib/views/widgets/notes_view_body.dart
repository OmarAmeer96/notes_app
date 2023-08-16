import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_app_bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 35, left: 20, right: 20),
      child: Column(
        children: [
          CustomAppBar(
            icon: Icons.search,
            title: "Notes",
          ),
          Expanded(
            child: NotesListView(),
          ),
        ],
      ),
    );
  }
}
