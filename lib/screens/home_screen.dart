import 'package:flutter/material.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/core/contant/my_text.dart';
import 'package:new_project_1/core/contant/small_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SmallText(
                        smalltext: 'Welcome Back!',
                        textColor: AppColors.buttonColor,
                        textSize: 11,
                      ),
                      MyText(
                        mytext: 'Fazil Laghari',
                        textSize: 22,
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/Rectangle 6.png',
                    height: 46,
                    width: 47,
                  ),
                ],
              ),
            ),
            //search bar
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 58,
                    width: 280,
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
                    height: 58,
                    width: 55,
                    color: AppColors.buttonColor,
                    child: Image.asset('assets/images/icon1.png'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 22,
                right: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    mytext: 'Completed Tasks',
                    textSize: 20,
                  ),
                  SmallText(
                    smalltext: 'See all',
                    textSize: 16,
                    textColor: AppColors.buttonColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 183,
              child: Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          right: index < 3
                              ? 7.0
                              : 0), // Add right padding except for the last item
                      child: Container(
                        height: 183,
                        width: 175,
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
                              const MyText(
                                mytext: 'Real Estate Website\n Design',
                                textColor: AppColors.buttontextColor,
                                textSize: 21,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              //team member section
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MyText(
                                    mytext: 'Team members',
                                    textColor: Color(0xff212832),
                                    textSize: 11,
                                  ),
                                  SizedBox(
                                    width: 60,
                                    height: 20,
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
                                                'assets/images/Ellipse 34.png'),
                                            radius: 10,
                                          ),
                                        ),
                                        Positioned(
                                          left: 20,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/Ellipse 35.png'),
                                            radius: 10,
                                          ),
                                        ),
                                        Positioned(
                                          left: 30,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/Ellipse 36.png'),
                                            radius: 10,
                                          ),
                                        ),
                                        Positioned(
                                          left: 40,
                                          child: CircleAvatar(
                                            backgroundImage: AssetImage(
                                                'assets/images/Ellipse 37.png'),
                                            radius: 10,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MyText(
                                    mytext: 'Completed',
                                    textSize: 11,
                                    fontWeight: FontWeight.w400,
                                    textColor: Color(0xff212832),
                                  ),
                                  SmallText(
                                    smalltext: '100%',
                                    textSize: 9,
                                    textColor: Color(0xff000000),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ],
                              ),
                              Container(
                                height: 6,
                                width: 163,
                                decoration: const BoxDecoration(
                                    color: Color(0xff212832),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
            //ongoning text section
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    mytext: 'Ongoing Projects',
                    textSize: 20,
                  ),
                  SmallText(
                    smalltext: 'See all',
                    textSize: 16,
                    textColor: AppColors.buttonColor,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 250,
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
                            padding: const EdgeInsets.symmetric(horizontal:  10),
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
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        color: Colors.blue, // You can set the color you want for the circle
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
            )
          ],
        ),
      ),
    );
  }
}
