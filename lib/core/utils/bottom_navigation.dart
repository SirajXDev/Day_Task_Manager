import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_project_1/core/contant/app_color.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BottomNavigationBar(
             selectedItemColor: AppColors.buttonColor,
             unselectedItemColor: const Color(0xff617D8A),
             showUnselectedLabels: true,
            items: [
              const BottomNavigationBarItem(
                backgroundColor: Color(0xff263238),
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                
                  icon: Icon(
                    Icons.chat,
                  ),
                  label: 'Chat',
                  backgroundColor: Color(0xff263238)),
              BottomNavigationBarItem(
                  icon: Container(
                    height: 54.h,
                    width: 54.w,
                    color: AppColors.buttonColor,
                    child: Image.asset('assets/images/addsquare.png'),
                  ),
                  label: ''),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ),
                label: 'Calender',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.notification_important,
                ),
                label: 'Notification',
                backgroundColor: AppColors.buttonColor,
              ),
            ]),
      ),
    );
  }
}
