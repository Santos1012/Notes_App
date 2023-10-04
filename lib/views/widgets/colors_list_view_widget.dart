import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tharwat_notes_app/views/widgets/circle_color_widget.dart';

class ColorsListViewWidget extends StatefulWidget {
  final List<Color> colorsList;
  final void Function()? onTap;
  const ColorsListViewWidget({super.key, required this.colorsList, this.onTap});

  @override
  State<ColorsListViewWidget> createState() => _ColorsListViewWidgetState();
}

class _ColorsListViewWidgetState extends State<ColorsListViewWidget> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                BlocProvider.of<AddNoteCubit>(context).color =
                    widget.colorsList[currentIndex];
              },
              child: CircleColorWidget(
                color: widget.colorsList[index],
                isSelectedColor: currentIndex == index,
              ),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
          itemCount: widget.colorsList.length),
    );
  }
}
