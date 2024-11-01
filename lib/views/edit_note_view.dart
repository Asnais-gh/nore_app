import 'package:flutter/material.dart';
import 'package:note_app/model/note_model.dart';

import 'package:note_app/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key,});
  static String id = 'EditNoteView';

  @override
  Widget build(BuildContext context) {
     final NoteModel noteModel = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      body: EditNoteViewBody(notesAtEditNoteViewBody: noteModel,),
    );
  }
}
