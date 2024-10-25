import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesItemListView extends StatelessWidget {
  const NotesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 8),
        child:  NoteItem(),
      );
    });
  }
}