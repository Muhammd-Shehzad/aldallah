import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomContainer extends StatelessWidget {
  final height;
  final width;
  final color;
  final text;
  CustomContainer({super.key, this.height, this.width, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      // height: 30.h,
      // width: 80.w,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Center(child: Text(text, style: TextStyle(fontSize: 18.sp))),
    );
  }
}
