import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({
    super.key,
  });

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
          icon: const Icon(
            Icons.search,
            size: 26,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
