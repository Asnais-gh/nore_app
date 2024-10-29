import 'package:flutter/material.dart';
import 'package:note_app/const.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_butten.dart';
import 'package:note_app/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
 const EditNoteViewBody({super.key});


     

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(height: 50),
          CustomTextField(
            hinttext: 'Title',
            controller:  TextEditingController(text: "Default Title")
          ),
          const SizedBox(height: 16),
           CustomTextField(
            hinttext: 'Contant',
            controller:  TextEditingController(text: "Default Content"),
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
    );
  }
}
