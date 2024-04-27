import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/my_text.dart';
import 'package:new_project_1/core/utils/app_buttons.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           SizedBox(
            height: 37.h,
          ),
          Center(
            child: Image.asset(
              'assets/images/Group 5.png',
            ),
          ),
           SizedBox(
            height: 49.h,
          ),
           Padding(
              padding: const EdgeInsets.only(left: 26),
              child: MyText(
                mytext: 'Welcome Back!',
                textSize: 26.sp,
              )),
           SizedBox(
            height: 23.h,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                label: const MyText(
                  mytext: 'Email Address',
                  textColor: AppColors.smalltextColor,
                ),
                labelStyle:
                    const TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400),
                hintText: 'sirajxdev@gmail.com',
                fillColor: const Color(0xff455A64),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                hintStyle: TextStyle(
                    color: AppColors.bigtextColor,
                    fontFamily: 'inter',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
                prefix: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.email,
                    color: AppColors.bigtextColor,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: AppColors.yellowColor,
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.visiblePassword,
              decoration:  InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: AppColors.smalltextColor,
                    fontFamily: 'inter',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
                hintText: '***********',
                fillColor: const Color(0xff455A64),
                filled: true,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                hintStyle: TextStyle(
                    color: AppColors.bigtextColor,
                    fontFamily: 'inter',
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400),
                prefix: const Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.lock,
                    color: AppColors.bigtextColor,
                  ),
                ),
                suffix: const Icon(
                  Icons.visibility_off,
                  color: AppColors.bigtextColor,
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                  color: AppColors.yellowColor,
                )),
              ),
            ),
          ),
           SizedBox(
            height: 10.h,
          ),
           Padding(
            padding: const EdgeInsets.only(right: 26),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 16.sp, color: const Color(0xff8CAAB9)),
              ),
            ),
          ),
           SizedBox(
            height: 50.h,
          ),
          const AppButtons(text: 'Log In'),
           SizedBox(
            height: 35.h,
          ),
          const Row(
            children: [
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(left: 26),
                child: Divider(
                  color: AppColors.bigtextColor,
                ),
              )),
              Padding(
                padding: EdgeInsets.only(left: 14, right: 14),
                child: Text(
                  'Or continue with',
                  style: TextStyle(color: Color(0xff8CAAB9)),
                ),
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.only(right: 26),
                child: Divider(
                  color: AppColors.bigtextColor,
                ),
              )),
            ],
          ),
           SizedBox(
            height: 35.h,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.bigtextColor)),
              height: 67.h,
              width: 340.w,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.add,
                    color: AppColors.bigtextColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  const MyText(
                    mytext: 'Google',
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
           SizedBox(
            height: 25.h,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don’t have an account?',
                style: TextStyle(color: Color(0xff8CAAB9)),
              ),
              MyText(
                mytext: 'Sign Up',
                textColor: AppColors.buttonColor,
                textSize: 16.sp,
              )
            ],
          ),
        ],
      ),
   
   
    );
  }
}
