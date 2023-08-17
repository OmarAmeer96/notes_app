import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 18,
              backgroundColor: Colors.deepOrange,
            ),
          )
        : const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.deepOrange,
          );
  }
}
