import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xff2191FB),
    Colors.deepOrange,
    Color(0xffBA274A),
    Color(0xffD3AB9E),
    Color(0xffB2ECE1),
    Color(0xff8CDEDC),
    Color(0xff5D576B),
    Color(0xffF1DB4B),
    Color(0xff397367),
    Color(0xffBAB700),
    Color(0xffA53F2B),
    Color(0xff815355),
    Color(0xffF4B266),
    Color(0xff18F2B2),
    Color(0xff929487),
    Color(0xff9ED8DB),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20 * 2,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  currentIndex = index;
                });
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
