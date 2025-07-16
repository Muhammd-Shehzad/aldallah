import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnbordingScreen2 extends StatefulWidget {
  const OnbordingScreen2({super.key});

  @override
  State<OnbordingScreen2> createState() => _OnbordingScreen2State();
}

class _OnbordingScreen2State extends State<OnbordingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity.h,
        width: double.infinity.w,
        color: Color(0xFF015B15),
        child: Stack(
          children: [
            Image.asset(
              'assets/pattern.png',
              height: double.infinity.h,
              width: double.infinity.w,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment(1.0, -1.0),
              child: Padding(
                padding: EdgeInsets.only(top: 80.0, right: 40.0),
                child: InkWell(
                  onTap: () => Get.offAllNamed(RoutesNames.LanguageScreen),
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 100.h,
              right: 5.w,
              left: 5.w,
              child: Image.asset(
                'assets/bordingScreen2.png',
                height: 340.h,
                width: 340.w,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 450.h,
              right: 30.w,
              left: 30.w,
              child: Text(
                'Stay Connected with Your Group',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 512.h,
              right: 30.w,
              left: 30.w,
              child: Text(
                'Chat with your group memebers,share updates,and tarck each other\'s location in real time',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
