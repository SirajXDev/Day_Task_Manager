import 'package:flutter/material.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class AppButtons extends StatelessWidget {
  const AppButtons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26),
      child: Container(
        height: 67,
        width: 376,
        color: AppColors.buttonColor,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: AppColors.buttontextColor,
              fontFamily: 'Inter',
              fontSize: 18.0,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}



