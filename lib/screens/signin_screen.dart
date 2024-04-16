import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
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
          const SizedBox(
            height: 37,
          ),
          Center(
            child: Image.asset(
              'assets/images/Group 5.png',
            ),
          ),
          const SizedBox(
            height: 49,
          ),
          const Padding(
              padding: EdgeInsets.only(left: 26),
              child: MyText(
                mytext: 'Welcome Back!',
                textSize: 26,
              )),
          const SizedBox(
            height: 23,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: TextField(
              controller: controller,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                label: MyText(
                  mytext: 'Email Address',
                  textColor: AppColors.smalltextColor,
                ),
                labelStyle:
                    TextStyle(fontFamily: 'inter', fontWeight: FontWeight.w400),
                hintText: 'sirajxdev@gmail.com',
                fillColor: Color(0xff455A64),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                hintStyle: TextStyle(
                    color: AppColors.bigtextColor,
                    fontFamily: 'inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                prefix: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.email,
                    color: AppColors.bigtextColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
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
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                    color: AppColors.smalltextColor,
                    fontFamily: 'inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                hintText: '***********',
                fillColor: Color(0xff455A64),
                filled: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 17, vertical: 5),
                hintStyle: TextStyle(
                    color: AppColors.bigtextColor,
                    fontFamily: 'inter',
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                prefix: Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Icon(
                    Icons.lock,
                    color: AppColors.bigtextColor,
                  ),
                ),
                suffix: Icon(
                  Icons.visibility_off,
                  color: AppColors.bigtextColor,
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: AppColors.yellowColor,
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 26),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 16, color: Color(0xff8CAAB9)),
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const AppButtons(text: 'Log In'),
          const SizedBox(
            height: 35,
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
          const SizedBox(
            height: 35,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.bigtextColor)),
              height: 67,
              width: 340,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    color: AppColors.bigtextColor,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  MyText(
                    mytext: 'Google',
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Don’t have an account?',
                style: TextStyle(color: Color(0xff8CAAB9)),
              ),
              MyText(
                mytext: 'Sign Up',
                textColor: AppColors.buttonColor,
                textSize: 16,
              )
            ],
          ),
        ],
      ),
    );
  }
}
