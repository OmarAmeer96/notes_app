import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.onPressed,
  });
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.grey.withOpacity(0.09),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 26,
            color: Colors.white,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
