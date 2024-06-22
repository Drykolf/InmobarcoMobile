import 'package:flutter/widgets.dart';class AppColor {
  AppColor._();
  static const Color blue1 = Color(0xff1B99D3);
  static const Color blue2 = Color(0xff48BFF7);
  static const Color black = Color(0xff141F21);
  static const Color lightGrey = Color(0xffbdbdbd);
  static const Color grey1 = Color(0xff2d2d2d);
  static const Color grey2 = Color(0xff373737);
  static const Color grey3 = Color(0xff464646);
  static const Color darkgrey = Color(0xff121212);

  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
     ],
   );
}