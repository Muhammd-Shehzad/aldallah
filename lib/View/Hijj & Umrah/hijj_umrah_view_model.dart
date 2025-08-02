import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HijjUmrahViewModel extends ChangeNotifier {
  List<Map<dynamic, dynamic>> imageData = [
    {
      'image1': 'assets/hijj1.png',
      'image2': 'assets/removeBackgroundHijj1.png',
      'name': 'Introduction of Hijj',
    },
    {
      'image1': 'assets/hijj2.png',
      'image2': 'assets/hijj2-removebg-preview.png',
      'name': 'Basic Umrah Guide',
    },
    {
      'image1': 'assets/hijj3.png',
      'image2': 'assets/hajj3.png',
      'name': 'How to wear Ihram',
    },
  ];

  void onTapFun(int index) {
    switch (index) {
      case 0:
        Get.toNamed(RoutesNames.IntroToHajjScreen);
        break;
      case 1:
        Get.toNamed(RoutesNames.BasicUmrahGuidesScreen);
        break;
      case 2:
        Get.toNamed(RoutesNames.HowToWearIhramScreen);
        break;
      default:
        Get.to(
          () => Scaffold(
            body: Center(
              child: Container(
                height: 100.h,
                width: 200.w,
                decoration: BoxDecoration(
                  color: Color(0xFF1A237E),
                  borderRadius: BorderRadius.circular(10.sp),
                ),
                child: Center(
                  child: Text(
                    'No Route Found',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
        break;
    }
  }
}
