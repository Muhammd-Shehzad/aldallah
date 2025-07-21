import 'package:aldallah/Model/Utils/Custom/CustomTextRich/custom_text_rich.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 40.h,
            left: 20.w,
            child: Image.asset('assets/Mask group.png'),
          ),
          Positioned(
            top: 40.h,
            left: 20.w,
            child: Image.asset('assets/Mask group.png'),
          ),
          Positioned(
            top: 60.h,
            left: 0.w,
            right: 0.w,
            child: Image.asset(
              'assets/homeScrren.png',
              fit: BoxFit.contain,
              height: 25.h,
              width: 80.w,
            ),
          ),
          Positioned(
            top: 55.h,
            right: 20.w,
            child: CircleAvatar(
              radius: 22.r,
              backgroundColor: Color(0xFF084716),
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                // backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
          ),

          Positioned(
            bottom: -13.h,
            right: -55.w,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/bordingScreen1.png',
                fit: BoxFit.contain,
                width: 330.w,
              ),
            ),
          ),
          Positioned(
            top: 130.h,
            left: 0.w,
            right: 0.w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 200.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: Color(0xFF084716),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 10.h,
                      right: 13.0.w,
                      child: Image.asset('assets/Mask group 2.png'),
                    ),
                    Positioned(
                      top: 10.h,
                      right: 13.0.w,
                      child: Image.asset('assets/Mask group 2.png'),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 20,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/lo.png',
                            height: 20.h,
                            width: 20.w,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Peshawar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomTextRich(
                      text1: 'Remaining time to Fajir pray\n',
                      colorText1: Colors.white,

                      sizeText1: 18.sp,
                      text2: 'Remaining time to Fajir pray',
                      sizeText2: 14.sp,
                      colorText2: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
