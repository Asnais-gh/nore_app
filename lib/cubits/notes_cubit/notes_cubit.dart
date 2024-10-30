import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app/const.dart';
import 'package:note_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fethcNote() {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notesList = noteBox.values.toList();
      emit(NotesSuccess(notesList));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
