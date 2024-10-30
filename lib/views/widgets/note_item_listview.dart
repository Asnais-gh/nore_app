import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/model/note_model.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesItemListView extends StatelessWidget {
  const NotesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notesList =
            BlocProvider.of<NotesCubit>(context).notesList ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
              itemCount: notesList.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                // final colors = [
                //   Colors.red,
                //   Colors.green,
                //   Colors.blue,
                //   Colors.orange
                // ];
                // final itemColor = colors[index % colors.length];
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    color: Colors.yellow,
                  ),
                );
              }),
        );
      },
    );
  }
}
