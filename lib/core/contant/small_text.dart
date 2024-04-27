import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class SmallText extends StatelessWidget {
  const SmallText(
      {super.key,
      required this.smalltext,
      this.textColor,
      this.textSize,
      this.fontWeight});
  final String smalltext;
  final Color? textColor;
  final double? textSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      smalltext,
      style: TextStyle(
        color: textColor ?? AppColors.smalltextColor,
        fontFamily: 'Inter',
        fontSize: textSize ?? 16.sp,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}
