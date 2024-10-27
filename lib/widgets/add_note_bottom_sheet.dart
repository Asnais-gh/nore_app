import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class AddNewNoteBottomSheet extends StatelessWidget {
  const AddNewNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 32),
          CustomTextField(
            hinttext: 'Title',
          )
        ],
      ),
    );
  }
}
