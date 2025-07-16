import 'package:aldallah/View/SplahScreen/splash_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({super.key});

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  SplashScreenViewModel screenViewModel = SplashScreenViewModel();
  @override
  void initState() {
    screenViewModel.splashServices();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/splahScreenImage.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: -50.h,
            left: 150,
            child: SizedBox(
              height: 300.h,
              width: 300.w,
              child: Opacity(opacity: 0.7, child: Image.asset('assets/l.png')),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black.withOpacity(0.3),
          ),
          Center(child: Image.asset('assets/splashText.png')),
          Positioned(
            top: 370.h,
            left: 0.w,
            right: 0.w,
            child: Center(
              child: Text(
                'Stay Connected Spiritually',
                style: TextStyle(color: Colors.white, fontSize: 18.sp),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
