import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/custom_circular_progress_indicator.dart';

import '../../services/show_snack_bar.dart';
import 'custom_main_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddNoteCubit, AddNoteState>(
      listener: (context, state) {
        if (state is AddNoteSuccess) {
          Navigator.pop(context);
          showSnackBar(context, state.successMessage);
        } else if (state is AddNoteFailure) {
          showSnackBar(context, state.errorMessage);
        }
      },
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: "Title",
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: "Content",
              maxLines: 6,
            ),
            const SizedBox(
              height: 50,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                final cubit = context.read<AddNoteCubit>();
                return cubit.isCurrentlyLoading
                    ? const CustomCircularProgrssIndicator()
                    : CustomMainButton(
                        text: "Add Note",
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            formKey.currentState!.save();
                          } else {
                            setState(() {
                              autovalidateMode = AutovalidateMode.always;
                            });
                          }
                        },
                      );
              },
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 100),
            //   child: CustomMainButton(
            //     text: "Cancel",
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     color: const Color(0xff8D070F),
            //     height: 45,
            //   ),
            // ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
