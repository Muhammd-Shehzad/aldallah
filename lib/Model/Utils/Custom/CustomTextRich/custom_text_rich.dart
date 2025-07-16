import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextRich extends StatelessWidget {
  final text1;
  final sizeText1;
  final sizeText2;
  final text2;
  CustomTextRich({
    super.key,
    this.text1,
    this.text2,
    this.sizeText1,
    this.sizeText2,
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
                color: Colors.black,
                fontSize: sizeText1,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(color: Colors.black54, fontSize: sizeText2),
            ),
          ],
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
