import 'package:flutter/material.dart';
import 'package:note_app/views/notes_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.poppins().fontFamily),
      home: const NotesView(),
    );
  }
}
