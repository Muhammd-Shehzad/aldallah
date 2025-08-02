import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HowToWearIhram extends StatefulWidget {
  const HowToWearIhram({super.key});

  @override
  State<HowToWearIhram> createState() => _HowToWearIhramState();
}

class _HowToWearIhramState extends State<HowToWearIhram> {
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
            top: 70.h,
            left: 20.w,
            child: Text(
              'Guides',
              style: TextStyle(color: Colors.black, fontSize: 18.sp),
            ),
          ),
        ],
      ),
    );
  }
}
