import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRich extends StatelessWidget {
  final text1;
  final sizeText1;
  final colorText1;
  final colorText2;
  final sizeText2;
  final textWeight1;
  final textWeight2;
  final text2;
  CustomTextRich({
    super.key,
    this.text1,
    this.text2,
    this.sizeText1,
    this.sizeText2,
    this.colorText1,
    this.colorText2,
    this.textWeight1,
    this.textWeight2,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: text1,
              style: TextStyle(
                color: colorText1,
                fontSize: sizeText1,
                fontWeight: textWeight1,
              ),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(
                color: colorText2,
                fontSize: sizeText2,
                fontWeight: textWeight2,
              ),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
