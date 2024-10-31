import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const.dart';
import 'package:note_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notesListCubit;
  fethcAllNote() {
    var noteBox = Hive.box<NoteModel>(kNoteBox);
    notesListCubit = noteBox.values.toList();
  }
}
