import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.notesAtEditNoteViewBody});

  final NoteModel notesAtEditNoteViewBody;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, contant;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(
            onPressed: () {
              widget.notesAtEditNoteViewBody.title =
                  title ?? widget.notesAtEditNoteViewBody.title;
              widget.notesAtEditNoteViewBody.contant =
                  contant ?? widget.notesAtEditNoteViewBody.contant;
              widget.notesAtEditNoteViewBody.save();
              BlocProvider.of<NotesCubit>(context).fethcAllNote();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hinttext: 'Title',
            controller: TextEditingController(
                text: widget.notesAtEditNoteViewBody.title),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              contant = value;
            },
            hinttext: 'Contant',
            controller: TextEditingController(
                text: widget.notesAtEditNoteViewBody.contant),
            maxLines: 5,
          ),
          const SizedBox(height: 64),
          // const CustomButton(
          //   buttenText: 'Add',
          //   backGroundColor: KBottomShetColor,
          //   textcolor: Colors.black,
          //   fontSize: 18,
          //   fontWeight: FontWeight.bold,
          // ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
