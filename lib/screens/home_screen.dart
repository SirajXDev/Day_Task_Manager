import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/core/contant/my_text.dart';
import 'package:new_project_1/core/contant/small_text.dart';
import 'package:new_project_1/core/utils/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22, right: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SmallText(
                          smalltext: 'Welcome Back!',
                          textColor: AppColors.buttonColor,
                          textSize: 11.sp,
                        ),
                        MyText(
                          mytext: 'Fazil Laghari',
                          textSize: 22.sp,
                        )
                      ],
                    ),
                    Image.asset(
                      'assets/images/Rectangle 6.png',
                      height: 46.h,
                      width: 47.w,
                    ),
                  ],
                ),
              ),
              //search bar
               SizedBox(
                height: 35.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 58.h,
                      width: 280.w,
                      decoration: const BoxDecoration(
                        color: Color(0xff455A64),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(color: AppColors.bigtextColor),
                          border: InputBorder.none,
                          icon: Padding(
                            padding: EdgeInsets.only(left: 18),
                            child: Icon(
                              Icons.search,
                              color: AppColors.bigtextColor,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 58.h,
                      width: 55.w,
                      color: AppColors.buttonColor,
                      child: Image.asset('assets/images/icon1.png'),
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 30.h,
              ),
               Padding(
                padding: const EdgeInsets.only(
                  left: 22,
                  right: 22,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      mytext: 'Completed Tasks',
                      textSize: 20.sp,
                    ),
                    SmallText(
                      smalltext: 'See all',
                      textSize: 16.sp,
                      textColor: AppColors.buttonColor,
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 30.h,
              ),

              SizedBox(
                height: 183.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Container(
                      height: 183.h,
                      width: 175.w,
                      margin: EdgeInsets.only(
                          left: index == 0 ? 22 : 3.5,
                          right: index == 3 ? 22 : 3.5),
                      color: index == 0
                          ? AppColors.buttonColor
                          : index == 1
                              ? Colors.blue
                              : index == 2
                                  ? Colors.teal
                                  : Colors.yellowAccent,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                             MyText(
                              mytext: 'Real Estate Website\n Design',
                              textColor: AppColors.buttontextColor,
                              textSize: 21.sp,
                            ),
                             SizedBox(
                              height: 16.h,
                            ),
                            //team member section
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  mytext: 'Team members',
                                  textColor: const Color(0xff212832),
                                  textSize: 11.sp,
                                ),
                                SizedBox(
                                  width: 60.h,
                                  height: 20.w,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0,
                                        child: CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'assets/images/Ellipse 32.png'),
                                          radius: 10.r,
                                        ),
                                      ),
                                      Positioned(
                                        left: 10,
                                        child: CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'assets/images/Ellipse 34.png'),
                                          radius: 10.r,
                                        ),
                                      ),
                                      Positioned(
                                        left: 20,
                                        child: CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'assets/images/Ellipse 35.png'),
                                          radius: 10.r,
                                        ),
                                      ),
                                      Positioned(
                                        left: 30,
                                        child: CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'assets/images/Ellipse 36.png'),
                                          radius: 10.r,
                                        ),
                                      ),
                                      Positioned(
                                        left: 40,
                                        child: CircleAvatar(
                                          backgroundImage: const AssetImage(
                                              'assets/images/Ellipse 37.png'),
                                          radius: 10.r,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              
                              ],
                            ),
                             SizedBox(
                              height: 2.h,
                            ),
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(
                                  mytext: 'Completed',
                                  textSize: 11.sp,
                                  fontWeight: FontWeight.w400,
                                  textColor: const Color(0xff212832),
                                ),
                                SmallText(
                                  smalltext: '100%',
                                  textSize: 9.sp,
                                  textColor: const Color(0xff000000),
                                  fontWeight: FontWeight.w600,
                                ),
                              ],
                            ),
                            Container(
                              height: 6.h,
                              width: 163.w,
                              decoration:  BoxDecoration(
                                  color: const Color(0xff212832),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.r))),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              //ongoning text section
               SizedBox(
                height: 30.h,
              ),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      mytext: 'Ongoing Projects',
                      textSize: 20.sp,
                    ),
                    SmallText(
                      smalltext: 'See all',
                      textSize: 16.sp,
                      textColor: AppColors.buttonColor,
                    ),
                  ],
                ),
              ),
               SizedBox(
                height: 15.h,
              ),
              SizedBox(
                height: 280.h,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 15),
                          child: Container(
                            height: 130,
                            width: 384,
                            color: const Color(0xff455A64),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const MyText(
                                    mytext: 'Mobile App Wireframe',
                                    textSize: 21,
                                  ),
                                  const MyText(
                                    mytext: 'Team members',
                                    textSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const SizedBox(
                                        height: 20,
                                        width: 40,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              left: 0,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/images/Ellipse 32.png'),
                                                radius: 10,
                                              ),
                                            ),
                                            Positioned(
                                              left: 10,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/images/Ellipse 36.png'),
                                                radius: 10,
                                              ),
                                            ),
                                            Positioned(
                                              left: 20,
                                              child: CircleAvatar(
                                                backgroundImage: AssetImage(
                                                    'assets/images/Ellipse 34.png'),
                                                radius: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 58,
                                        height: 58,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors
                                              .blue, 
                                        ),
                                      ),
                                    ],
                                  ),
                                  const MyText(
                                    mytext: 'Due on : 20 June',
                                    textSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),

              // const SizedBox(
              //   height: 89,
              //   child: CustomBottomNavigation(),
              // ),
            ],
          ),
        ),

      
      ),
      bottomNavigationBar: const SizedBox(height: 82,child: CustomBottomNavigation(),),
    );
  }
}
