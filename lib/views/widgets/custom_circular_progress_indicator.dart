import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomCircularProgrssIndicator extends StatelessWidget {
  const CustomCircularProgrssIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        kPrimaryColor,
      ),
    );
  }
}
