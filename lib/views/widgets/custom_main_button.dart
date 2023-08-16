import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import '../../services/show_error_snack_bar.dart';
import 'custom_circular_progress_indicator.dart';

class CustomMainButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final Color color;
  final double height;

  const CustomMainButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.height = 55,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          Navigator.pop(context);
          // showSuccessSnackBar(context, state.successMessage);
        } else if (state is AddNoteFailure) {
          showErrorSnackBar(context, state.errorMessage);
        }
      },
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(19),
          ),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: height,
          alignment: Alignment.center,
          child: BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              final cubit = context.read<AddNoteCubit>();
              return cubit.isCurrentlyLoading
                  ? const CustomCircularProgrssIndicator()
                  : Text(
                      text,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    );
            },
          ),
        ),
      ),
    );
  }
}
