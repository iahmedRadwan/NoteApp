import 'package:flutter/material.dart';
import '../../../core/view/components/custom_button.dart';
import 'custom_text_field.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Describtion',
            maxLine: 5,
          ),
          Spacer(),
          CustomButton(
            onPressed: () {},
            buttonText: "Add",
            fontSize: 18,
            borderRadius: 12,
            textColor: Colors.black,
          ),
        ],
      ),
    );
  }
}
