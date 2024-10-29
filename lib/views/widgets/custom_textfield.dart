import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hinttext,
    this.onChanged,
    this.maxLines,
    this.controller,
    this.onSeved,
  });
  final String? hinttext;
  final int? maxLines;
  final Function(String)? onChanged;
  final TextEditingController? controller; // Accepts a controller
  final void Function(String?)? onSeved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSeved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'field is Required';
        } else {
          return null;
        }
      },
      controller: controller, // Set the controller
      cursorColor: KBottomShetColor,
      maxLines: maxLines,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hinttext,
        hintStyle: const TextStyle(color: KBottomShetColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: KBottomShetColor),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
        borderRadius: BorderRadius.circular(8));
  }
}
