import 'package:flutter/material.dart';
import 'package:note_app/const.dart';
import 'package:note_app/views/widgets/custom_butten.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';

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
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            onSeved: (value) {
              title = value;
            },
            hinttext: 'Title',
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onSeved: (value) {
              contant = value;
            },
            hinttext: 'Contant',
            maxLines: 5,
          ),
          const SizedBox(height: 64),
          CustomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            buttenText: 'Add',
            backGroundColor: KBottomShetColor,
            textcolor: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
