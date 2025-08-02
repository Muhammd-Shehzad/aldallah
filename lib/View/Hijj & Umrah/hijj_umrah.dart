import 'dart:ui';

import 'package:aldallah/View/Hijj%20&%20Umrah/hijj_umrah_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HijjUmrah extends StatefulWidget {
  const HijjUmrah({super.key});

  @override
  State<HijjUmrah> createState() => _HijjUmrahState();
}

class _HijjUmrahState extends State<HijjUmrah> {
  @override
  Widget build(BuildContext context) {
    final hijjUmrahViewModel = Provider.of<HijjUmrahViewModel>(context);
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
                  'Hihh & Umarah',
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

          Positioned(
            top: 100.h,
            left: 5.w,
            right: 5.w,
            child: Container(
              height: 600.h,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 1,
                ),
                itemCount: hijjUmrahViewModel.imageData.length,
                itemBuilder: (contex, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () => hijjUmrahViewModel.onTapFun(index),
                      child: Stack(
                        children: [
                          ClipRect(
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                sigmaX: 4.0,
                                sigmaY: 4.0,
                              ),
                              child: Image.asset(
                                hijjUmrahViewModel.imageData[index]['image1'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 5.h,
                            left: 5.w,
                            right: 5.w,

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 115.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFC359),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 100.h,
                            left: 16.w,
                            right: 10.w,
                            child: Text(
                              hijjUmrahViewModel.imageData[index]['name'],
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10.h,
                            left: 20.w,
                            right: 20.w,
                            bottom: 50.h,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 3,
                                vertical: 10,
                              ),
                              child: Image.asset(
                                hijjUmrahViewModel.imageData[index]['image1'],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: -9.h,
                            left: 23.w,
                            right: 23.w,
                            child: Image.asset(
                              hijjUmrahViewModel.imageData[index]['image2'],
                              height: 100.h,

                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
