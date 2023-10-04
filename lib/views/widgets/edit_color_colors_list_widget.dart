import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat_notes_app/constants.dart';
import 'package:tharwat_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tharwat_notes_app/views/widgets/circle_color_widget.dart';

class EditColorColorsListView extends StatefulWidget {
  final int currentColorValue;
  const EditColorColorsListView({super.key, required this.currentColorValue});

  @override
  State<EditColorColorsListView> createState() =>
      _EditColorColorsListViewState();
}

class _EditColorColorsListViewState extends State<EditColorColorsListView> {
  int? currentColor;

  @override
  Widget build(BuildContext context) {
    currentColor = widget.currentColorValue;

    return SizedBox(
      height: 60,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentColor = kColorsList[index].value;
              });
              BlocProvider.of<AddNoteCubit>(context).color = currentColor!;
            },
            child: CircleColorWidget(
              color: kColorsList[index],
              isSelectedColor: currentColor == kColorsList[index].value,
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(
          width: 10,
        ),
        itemCount: kColorsList.length,
      ),
    );
  }
}
