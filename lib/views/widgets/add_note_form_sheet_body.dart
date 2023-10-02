import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tharwat_notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:tharwat_notes_app/helpers/custom_date_format_function.dart';
import 'package:tharwat_notes_app/models/note_model.dart';
import 'package:tharwat_notes_app/views/widgets/custom_button_widget.dart';
import 'package:tharwat_notes_app/views/widgets/custom_text_feild_widget.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            CustomTextFeild(
              labelText: "Title",
              onSaved: (value) {
                title = value;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomTextFeild(
              labelText: "Content",
              onSaved: (value) {
                subTitle = value;
              },
              maxLines: 5,
            ),
            const SizedBox(
              height: 35,
            ),
            BlocBuilder<AddNoteCubit, AddNoteState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      autovalidateMode = AutovalidateMode.disabled;
                      formKey.currentState!.save();
                      NoteModel note = NoteModel(
                          title: title!,
                          subTitle: subTitle!,
                          date: customDateFormatFunction(
                            dateAsString: DateTime.now().toString(),
                          ),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
