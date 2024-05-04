import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/core/contant/my_text.dart';
import 'package:new_project_1/core/contant/small_text.dart';
import 'package:new_project_1/core/utils/app_buttons.dart';
import 'package:new_project_1/screens/home_screen.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
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
                  mytext: 'Create your account',
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
                decoration:  InputDecoration(
                  label: const MyText(
                    mytext: 'Full Name',
                    textColor: AppColors.smalltextColor,
                  ),
                  labelStyle: const TextStyle(
                      fontFamily: 'inter', fontWeight: FontWeight.w400),
                  hintText: 'Siraj UL Haq',
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
                      Icons.verified_user,
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
             SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.emailAddress,
                decoration:  InputDecoration(
                  label: const MyText(
                    mytext: 'Email Address',
                    textColor: AppColors.smalltextColor,
                  ),
                  labelStyle: const TextStyle(
                      fontFamily: 'inter', fontWeight: FontWeight.w400),
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
             SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 26, right: 26),
              child: TextField(
                controller: controller,
                keyboardType: TextInputType.visiblePassword,
                decoration:  InputDecoration(
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      color: AppColors.smalltextColor,
                      fontFamily: 'inter',
                      fontSize: 18,
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
              padding: const EdgeInsets.only(left: 26),
              child: Row(
                children: [
                  const Icon(
                    Icons.check_box_outlined,
                    color: AppColors.buttonColor,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  SmallText(
                    smalltext: 'I have read & agreed to DayTask',
                    textSize: 14.sp,
                    textColor: AppColors.smalltextColor,
                  ),
                  SmallText(
                    smalltext: ' Privacy Policy,',
                    textSize: 14.sp,
                    textColor: AppColors.buttonColor,
                  ),
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 26),
              child: SmallText(
                smalltext: '  Terms & Condition',
                textSize: 14.sp,textColor: AppColors.buttonColor
              ),
            ),
             SizedBox(
              height: 50.h,
            ),
            GestureDetector(
              onTap: () {
                
              Navigator.push(context, MaterialPageRoute(builder: ((context) =>  const HomeScreen())));
            
              },
              child: const AppButtons(text: 'Sign Up')),
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
                  'Already have an account? ',
                  style: TextStyle(color: Color(0xff8CAAB9)),
                ),
                MyText(
                  mytext: 'Log In',
                  textColor: AppColors.buttonColor,
                  textSize: 16.sp,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
