import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final btnText;
  final btnTextColor;
  final btnColor;
  final btnHeight;
  final btnWidth;
  final onPressed;
  CustomButton({
    super.key,
    this.btnText,
    this.btnColor,
    this.btnHeight,
    this.btnWidth,
    this.onPressed,
    this.btnTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: btnHeight,
        width: btnWidth,
        decoration: BoxDecoration(
          color: btnColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(color: btnTextColor, fontSize: 18.sp),
          ),
        ),
      ),
    );
  }
}
