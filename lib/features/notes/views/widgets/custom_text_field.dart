import 'package:flutter/material.dart';

import '../../../../shared/utils/colors_manager.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.maxLine = 1,
    required this.hintText,
  });
  final int maxLine;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
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
