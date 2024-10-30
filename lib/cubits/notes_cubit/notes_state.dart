part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLouding extends NotesState {}

final class NotesSuccess extends NotesState {
  final List<NoteModel> Notes;

  NotesSuccess(this.Notes);
}

final class NotesFailure extends NotesState {
  final String errmessage;

  NotesFailure(this.errmessage);
}
