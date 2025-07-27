import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class QiblaScreen extends StatefulWidget {
  const QiblaScreen({super.key});

  @override
  State<QiblaScreen> createState() => _QiblaScreenState();
}

class _QiblaScreenState extends State<QiblaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF084716),
      body: Stack(
        children: [
          Positioned(
            top: 50.h,
            left: 10.w,
            child: Image.asset(
              'assets/Rectangle.png',
              height: 50.h,
              width: 50.w,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 50.h,
            left: 45.w,
            child: Column(
              children: [
                Text(
                  'Fajir-05:51',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
                Text(
                  'Peshawar',
                  style: TextStyle(color: Colors.white, fontSize: 18.sp),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50.h,
            right: 20.w,
            child: InkWell(
              onTap: () => Get.back(),
              child: Icon(Icons.close, color: Colors.white, size: 25.sp),
            ),
          ),
          // Align(
          //   alignment: Alignment.center,
          //   child: Image.asset('assets/qabila.png'),
          // ),
          Positioned(
            top: 278.h,
            left: 170.w,
            child: Image.asset(
              'assets/qiblaDirection.png',
              height: 190.h,
              // width: 160.w,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 445.h,
            left: 160.w,
            child: Image.asset(
              'assets/dot.png',
              height: 30.h,
              width: 30.w,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 220.h,
            left: 108.w,
            child: Image.asset(
              'assets/qabila.png',
              height: 130.h,
              width: 130.w,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: 380.h,
            left: 150.w,
            child: Image.asset('assets/qiblaVector.png'),
          ),
          Positioned(
            right: 10.w,
            bottom: 20.h,
            child: Image.asset('assets/bottomRight.png'),
          ),
          Positioned(
            right: 10.w,
            bottom: 20.h,
            child: Image.asset('assets/bottomRight.png'),
          ),
          Positioned(
            left: 10.w,
            bottom: 20.h,
            child: Image.asset('assets/bottomLeft.png'),
          ),
          Positioned(
            left: 10.w,
            bottom: 20.h,
            child: Image.asset('assets/bottomLeft.png'),
          ),
        ],
      ),
    );
  }
}
