import 'package:flutter/material.dart';

import '../../../../shared/utils/colors_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLine = 1,
    required this.hintText,
    this.onSaved,
    this.initalValue,
    this.onChange,
  });
  final int maxLine;
  final String hintText;
  final void Function(String?)? onSaved;
  final String? initalValue;
  final void Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChange,
      initialValue: initalValue,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "This Field Required";
        } else {
          return null;
        }
      },
      maxLines: maxLine,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: ColorManagerHelper.kMainColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManagerHelper.kMainColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
