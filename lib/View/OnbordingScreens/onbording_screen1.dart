import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnbordingScreen1 extends StatefulWidget {
  const OnbordingScreen1({super.key});

  @override
  State<OnbordingScreen1> createState() => _OnbordingScreen1State();
}

class _OnbordingScreen1State extends State<OnbordingScreen1> {
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
              top: 90.h,
              right: 10.w,
              left: 10.w,
              child: Image.asset(
                'assets/bordingScreen1.png',
                height: 340.h,
                width: 340.w,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 430.h,
              right: 30.w,
              left: 30.w,
              child: Text(
                'Your Guide for Sacred Journeys',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Positioned(
              top: 490.h,
              right: 30.w,
              left: 30.w,
              child: Text(
                'Aldaalah will lead you through every step of your Umrah and Hajj experience',
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
