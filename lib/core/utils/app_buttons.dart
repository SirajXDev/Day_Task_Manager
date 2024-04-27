import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class AppButtons extends StatelessWidget {
  const AppButtons({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 26, right: 26),
      child: Container(
        height: 67.h,
        width: 376.w,
        color: AppColors.buttonColor,
        child: Center(
          child: Text(
            text,
            style:  TextStyle(
              color: AppColors.buttontextColor,
              fontFamily: 'Inter',
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}



