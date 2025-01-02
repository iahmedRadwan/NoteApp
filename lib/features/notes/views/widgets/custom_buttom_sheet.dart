import 'package:flutter/material.dart';

import '../../../../shared/utils/colors_manager.dart';
import '../../../core/view/components/custom_button.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Title",
              hintStyle: TextStyle(color: ColorManagerHelper.kMainColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextField(
            minLines: 5,
            maxLines: 10,
            decoration: InputDecoration(
              hintText: "Description",
              hintStyle: TextStyle(color: ColorManagerHelper.kMainColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
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
