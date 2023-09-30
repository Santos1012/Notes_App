import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteTileItem extends StatelessWidget {
  const NoteTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24,
        bottom: 24,
        left: 32,
        right: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFFFCC80).withOpacity(.95),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              "Flutter tips",
              style: TextStyle(
                color: Colors.black,
                fontSize: 27,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "Build your career with Tharwat Samy",
                style: TextStyle(
                  color: Colors.black.withOpacity(.45),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.trash,
                color: Colors.black,

                size: 24,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6),
            child: Text(
              "May 30,2023",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black.withOpacity(.4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
