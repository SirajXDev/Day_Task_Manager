import 'package:flutter/material.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class MyText extends StatelessWidget {
  const MyText(
      {super.key,
      required this.mytext,
      this.textColor,
      this.textSize,
      this.fontWeight});
  final String mytext;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      mytext,
      style: TextStyle(
        color: textColor ?? AppColors.bigtextColor,
        fontFamily: 'Inter',
        fontSize: textSize ?? 18,
        fontWeight: fontWeight ?? FontWeight.w600,
      ),
    );
  }
}
