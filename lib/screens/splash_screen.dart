
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/utils/app_buttons.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/screens/signup_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      //resizeToAvoidBottomInset: false, work as singlechildScrollview
      backgroundColor: AppColors.scaffoldColor,
     body: SafeArea(child: SingleChildScrollView(
       child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(height: 23.h,),
           
        const Padding(
          padding: EdgeInsets.only(left: 26),
          child: Image(image: AssetImage('assets/images/Group 5.png'),),
        ),
         SizedBox(height: 37.h,),
         const Padding(
           padding: EdgeInsets.only(left: 26,right: 26),
           child: Image(image: AssetImage('assets/images/Group 12.png')),
         ),
         SizedBox(height: 52.h,),
         const Padding(
           padding: EdgeInsets.only(left: 26,right: 26),
           child: Image(image: AssetImage('assets/images/text1.png')),
         ),
         SizedBox(height: 64.h,),
           InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => SignUpScreen())));
            },
            child:   const AppButtons(text: 'Let’s Start',),),
         SizedBox(height: 40.h,),
       
       ],),
     )),
    );
  }
}
