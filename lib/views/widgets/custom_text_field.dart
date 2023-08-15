import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: "Title",
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
