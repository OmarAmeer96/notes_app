import 'package:flutter/material.dart';

class CustomCircularProgrssIndicator extends StatelessWidget {
  const CustomCircularProgrssIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(
        Colors.black54,
      ),
    );
  }
}
