import 'package:flutter/material.dart';
import 'package:note_app/const.dart';
import 'package:note_app/widgets/custom_app_bar.dart';
import 'package:note_app/widgets/custom_butten.dart';
import 'package:note_app/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
           SizedBox(height: 50),
           CustomAppBar(title: 'Edit Note',icon: Icons.check,),
           SizedBox(height: 32),
          CustomTextField(
            hinttext: 'Title',
          ),
           SizedBox(height: 16),
          CustomTextField(
            hinttext: 'Contant',
            maxLines: 5,
          ),
           SizedBox(height: 64),
           CustomButton(
            buttenText: 'Add',
            backGroundColor: KBottomShetColor,
            textcolor: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
           SizedBox(height: 16),
        ],
      ),
    );
  }
}
