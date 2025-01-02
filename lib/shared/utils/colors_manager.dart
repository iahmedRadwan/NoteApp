import 'dart:ui';

class ColorManagerHelper {
  /// main app color
  static const Color kMainColor = Color(0xff62FCD7);

  /// main white color
  static const Color kWhiteColor = Color(0xffffffff);

  /// main Orange color
  static const Color kOrangeColor = Color(0xffD75A2B);

  /// main Grey color
  static const Color kGreyColor = Color(0xff808080);

  /// main Border color
  static const Color kBorderColor = Color(0xff000000);

  /// main Black color
  static const Color kBlackColor = Color(0xff000000);

  /// main Red color
  static const Color redColor = Color(0xFFD3442D);

  static convertColor(colorString) {
    if (colorString != null) {
      String colorHex =
          colorString.startsWith('#') ? colorString : '#$colorString';
      int colorInt = int.parse(colorHex.replaceAll("#", "ff"), radix: 16);
      Color myColor = Color(colorInt);
      return myColor;
    }
  }
}
