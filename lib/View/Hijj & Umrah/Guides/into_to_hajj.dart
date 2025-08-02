import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class IntoToHajj extends StatefulWidget {
  const IntoToHajj({super.key});

  @override
  State<IntoToHajj> createState() => _IntoToHajjState();
}

class _IntoToHajjState extends State<IntoToHajj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 20.h,
            right: 10.w,
            child: Image.asset('assets/Mask group 2.png'),
          ),
          Positioned(
            top: 20.h,
            right: 10.w,
            child: Image.asset('assets/Mask group 2.png'),
          ),
          Positioned(
            bottom: 9.h,
            right: -160.w,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/bordingScreen1.png',
                fit: BoxFit.contain,
                width: 460.w,
              ),
            ),
          ),
          Positioned(
            top: 40.h,
            left: 20.w,
            child: Row(
              children: [
                InkWell(onTap: () => Get.back(), child: Icon(Icons.arrow_back)),
                SizedBox(width: 10.w),
                Text(
                  'Guides',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 9.h,
            right: -160.w,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/bordingScreen1.png',
                fit: BoxFit.contain,
                width: 460.w,
              ),
            ),
          ),
          Positioned(
            top: 80.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  Text(
                    'Introduction to Hajj',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.asset(
                        'assets/hijj2.png',
                        height: 150.h,
                        width: 300.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'The ritual of Hajj is the fifth pillar of Islam, and it has many virtues, including',
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  bulletPoint('It leads to paradise'),
                  bulletPoint('It expiates sins'),
                  bulletPoint('It is a reason for getting rich'),
                  bulletPoint(
                    'It is a reason for security and Allah’s protection',
                  ),
                  SizedBox(height: 10.h),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.r),
                      child: Image.asset(
                        'assets/hijj3.png',
                        height: 150.h,
                        width: 300.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'The ritual of Hajj is the fifth pillar of Islam, and it has many virtues, including',
                    style: TextStyle(fontSize: 18.sp, color: Colors.black),
                  ),
                  SizedBox(height: 10.h),
                  bulletPoint('It leads to paradise'),
                  bulletPoint('It expiates sins'),
                  bulletPoint('It is a reason for getting rich'),
                  bulletPoint(
                    'It is a reason for security and Allah’s protection',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget bulletPoint(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 6.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 16.sp)),
          Expanded(child: Text(text, style: TextStyle(fontSize: 16.sp))),
        ],
      ),
    );
  }
}
