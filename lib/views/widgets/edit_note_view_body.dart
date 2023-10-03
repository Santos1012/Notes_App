import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:tharwat_notes_app/views/widgets/edit_notes_text_feilds_widget.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteViewBody({super.key, required this.note});
  static TextEditingController titleController = TextEditingController();
  static TextEditingController subTitletController = TextEditingController();
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    if (EditNoteViewBody.titleController.text == "") {
      EditNoteViewBody.titleController.text = widget.note.title;
      EditNoteViewBody.subTitletController.text = widget.note.subTitle;
    }
    return SafeArea(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
          child: Column(
            children: [
              CustomAppBar(
                title: "Edit Note",
                icon: Icons.done_rounded,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    setState(() {
                      autovalidateMode = AutovalidateMode.disabled;
                    });
                    EditNoteViewBody.titleController.clear();
                    EditNoteViewBody.subTitletController.clear();
                    formKey.currentState!.save();
                    Navigator.pop(context);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const EditNotesTextFeilds()
            ],
          ),
        ),
      ),
    );
  }
}
