import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1, // Default 1
    this.onSaved,
    this.onChanged,
  });

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "This field is required!";
        } else {
          return null;
        }
      },
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildTextFieldBorder(),
        enabledBorder: buildTextFieldBorder(),
        focusedBorder: buildTextFieldBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildTextFieldBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),
      borderRadius: const BorderRadius.all(
        Radius.circular(10),
      ),
    );
  }
}
