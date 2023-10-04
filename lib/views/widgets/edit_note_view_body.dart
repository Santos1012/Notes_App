import 'package:flutter/material.dart';
import 'package:tharwat_notes_app/helpers/text_feild_edit_validate_function.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/views/widgets/edit_color_colors_list_widget.dart';
import 'package:tharwat_notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:tharwat_notes_app/views/widgets/edit_notes_text_feilds_widget.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;

  const EditNoteViewBody({super.key, required this.note});
  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  TextEditingController titleController = TextEditingController();
  TextEditingController subTitletController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if (titleController.text == "" && subTitletController.text == "") {
      titleController.text = widget.note.title;
      subTitletController.text = widget.note.subTitle;
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
                    textFeildEditValidateFunction(
                      context: context,
                      note: widget.note,
                      titleController: titleController,
                      subTitletController: subTitletController,
                      formKey: formKey,
                    );
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
              EditNotesTextFeilds(
                titleController: titleController,
                subTitletController: subTitletController,
              ),
              const SizedBox(
                height: 20,
              ),
              EditColorColorsListView(
                note: widget.note,
              )
            ],
          ),
        ),
      ),
    );
  }
}
