//small text
import 'package:flutter/material.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class SmallText extends StatelessWidget {
  const SmallText({super.key, required this.smalltext, required this.fontSize});
  final String smalltext;
  final String fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      smalltext,
      style: const TextStyle(
        color: AppColors.smalltextColor,
        fontFamily: 'Inter',
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}