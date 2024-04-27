import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/core/contant/my_text.dart';
import 'package:new_project_1/core/utils/bottom_navigation.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.only(top: 20.h)),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.arrow_left,
                  color: AppColors.bigtextColor,
                ),
                MyText(mytext: 'Messages'),
                Icon(
                  Icons.edit_note_outlined,
                  color: AppColors.bigtextColor,
                ),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 29.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 47.h,
                    width: 175.w,
                    color: AppColors.buttonColor,
                    child: const Center(
                        child: MyText(
                      mytext: 'Chat',
                      textColor: AppColors.buttontextColor,
                    )),
                  ),
                  Container(
                    height: 47.h,
                    width: 175.w,
                    color: const Color(0xff263238),
                    child: const Center(child: MyText(mytext: 'Group')),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            SizedBox(
              height: 500.h,
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/Ellipse 37.png'),
                      ),
                      trailing: MyText(
                        mytext: '31min',
                        textSize: 8,
                      ),
                      title: MyText(
                        mytext: 'Olivia Anna',
                        textSize: 14,
                      ),
                      subtitle: MyText(
                        mytext: 'Hi, please check the last task, that I....',
                        textSize: 14,
                        textColor: Color(0xffB8B8B8),
                      ),
                    );
                  }),
            ),
            SizedBox(height: 30.h),
            Padding(
              padding:  EdgeInsets.only(right: 29.w),
              child: Container(
                width: 175.w,
                height: 57.h,
                color: AppColors.buttonColor,
                child: const Center(
                    child: MyText(
                  mytext: 'Start chat',
                  textColor: AppColors.buttontextColor,
                )),
              ),
            )
          ],
        ),
      ),
       bottomNavigationBar: const SizedBox(height: 82,child: CustomBottomNavigation(),),
    );
  }
}
