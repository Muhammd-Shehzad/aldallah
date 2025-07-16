import 'package:aldallah/Model/Utils/Custom/CustomButton/custom_button.dart';
import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OnbordingScreen3 extends StatefulWidget {
  const OnbordingScreen3({super.key});

  @override
  State<OnbordingScreen3> createState() => _OnbordingScreen3State();
}

class _OnbordingScreen3State extends State<OnbordingScreen3> {
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

            Positioned(
              top: 90.h,
              right: 5.w,
              left: 5.w,
              child: Image.asset(
                'assets/bordingScreen3.png',
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
                'Explore Sacred Sites with Purpose',
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
                'Discover important palaces and recive contextual duas and activites tailored to your location.',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            Positioned(
              top: 600.h,
              right: 95.w,
              left: 95.w,
              child: CustomButton(
                onPressed: () => Get.offAllNamed(RoutesNames.LanguageScreen),
                btnHeight: 35.h,
                btnWidth: 80.w,
                btnColor: Color(0xFFE2BE7E),
                btnText: 'Let\'s get started'.tr,
                btnTextColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
