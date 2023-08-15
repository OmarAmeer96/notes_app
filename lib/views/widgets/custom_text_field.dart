import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.maxLines = 1, // Default 1
  });

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
