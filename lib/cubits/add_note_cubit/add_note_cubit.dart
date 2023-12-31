import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  bool isLoading = false;
  bool get isCurrentlyLoading => isLoading;
  Color color = const Color(0xff2191FB);
  // Method to add notes in the HIVE database
  addNote(NoteModel note) async {
    note.color = color.value;
    isLoading = true;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccess("Note successfully added"));
      isLoading = false;
    } catch (e) {
      emit(AddNoteFailure("Error: $e"));
      isLoading = false;
    }
  }
}
