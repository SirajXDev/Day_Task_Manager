import 'package:flutter/material.dart';
import 'package:new_project_1/core/contant/app_color.dart';
import 'package:new_project_1/core/contant/my_text.dart';

class TaskDetailScreen extends StatelessWidget {
  const TaskDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      //  resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.only(top: 20)),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_left,
                    color: AppColors.bigtextColor,
                  ),
                  MyText(mytext: 'Task Details'),
                  Icon(
                    Icons.edit_note_outlined,
                    color: AppColors.bigtextColor,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29),
                child: MyText(
                  mytext: 'Real Estate App Design',
                  textSize: 21,
                ),
              ),
              const SizedBox(
                height: 27,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Row(
                  children: [
                    Container(
                      height: 47,
                      width: 47,
                      color: AppColors.buttonColor,
                      child: const Icon(Icons.calendar_month_rounded),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          mytext: 'Due Date',
                          textSize: 11,
                          fontWeight: FontWeight.w500,
                        ),
                        MyText(
                          mytext: '20 June',
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 60,
                    ),
                    Container(
                      height: 47,
                      width: 47,
                      color: AppColors.buttonColor,
                      child: const Icon(Icons.supervised_user_circle),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MyText(
                          mytext: 'Project Team',
                          textSize: 11,
                          fontWeight: FontWeight.w500,
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29),
                child: MyText(
                  mytext: 'Project Details',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29),
                child: MyText(
                  mytext:
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled',
                  textSize: 11,
                  fontWeight: FontWeight.w400,
                  textColor: AppColors.smalltextColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 29),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const MyText(mytext: 'Project Progress'),
                    Container(
                      width: 58,
                      height: 58,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,

                             // You can set the color you want for the circle
                      ),

                    ),
                  
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 29),
                child: MyText(mytext: ' All Tasks'),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(
                            left: 29, right: 29, top: 6, bottom: 6),
                        height: 58,
                        width: 370,
                        color: const Color(0xff455A64),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const MyText(mytext: 'User Interviews'),
                              Container(
                                height: 40,
                                width: 40,
                                color: AppColors.buttonColor,
                                child: const Icon(Icons.check_circle),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              // Container(height: 114,color:Colors.blue,)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 114,
        color: const Color(0xff263238),
        child: Center(
          child: Container(
            height: 57,
            width: 318,
            color: AppColors.buttonColor,
            child: const Center(
                child: MyText(
              mytext: 'Add Task',
              textColor: AppColors.buttontextColor,
            )),
          ),
        ),
      ),
    );
  }
}
