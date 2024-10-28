import 'package:flutter/material.dart';
import 'package:note_app/const.dart';
import 'package:note_app/widgets/custom_butten.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class AddNewNoteBottomSheet extends StatelessWidget {
  const AddNewNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
    return Padding(
      padding: EdgeInsets.only(right: 16,left: 16,bottom: bottomPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            CustomTextField(
              hinttext: 'Title',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              hinttext: 'Contant',
              maxLines: 5,
            ),
            const SizedBox(height: 64),
            const CustomButton(
              buttenText: 'Add',
              backGroundColor: KBottomShetColor,
              textcolor: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
