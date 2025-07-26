import 'package:aldallah/Model/Utils/Custom/CustomTextRich/custom_text_rich.dart';
import 'package:aldallah/View/Home/HomeScreen/home_screen_view_model.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final homeScreenViewModel = Provider.of<HomeScreenViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 50.h,
            left: 20.w,
            child: Image.asset('assets/Mask group.png'),
          ),
          Positioned(
            top: 50.h,
            left: 20.w,
            child: Image.asset('assets/Mask group.png'),
          ),
          Positioned(
            top: 70.h,
            left: 0.w,
            right: 0.w,
            child: Image.asset(
              'assets/homeScrren.png',
              fit: BoxFit.contain,
              height: 25.h,
              width: 80.w,
            ),
          ),
          Positioned(
            top: 65.h,
            right: 20.w,
            child: CircleAvatar(
              radius: 22.r,
              backgroundColor: Color(0xFF084716),
              child: CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.white,
                // backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
          ),

          Positioned(
            bottom: -13.h,
            right: -55.w,
            child: Opacity(
              opacity: 0.6,
              child: Image.asset(
                'assets/bordingScreen1.png',
                fit: BoxFit.contain,
                width: 330.w,
              ),
            ),
          ),
          Positioned(
            top: 150.h,
            left: 0.w,
            right: 0.w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: 180.h,
                width: 300.w,
                decoration: BoxDecoration(
                  color: Color(0xFF084716),
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment:
                          (Get.locale?.languageCode == 'ur' ||
                                  Get.locale?.languageCode == 'ar')
                              ? Alignment.topLeft
                              : Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        child: Image.asset(
                          (Get.locale?.languageCode == 'ur' ||
                                  Get.locale?.languageCode == 'ar')
                              ? 'assets/Mask group.png'
                              : 'assets/Mask group 2.png',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 10,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/lo.png',
                            height: 20.h,
                            width: 20.w,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.w),
                          Text(
                            'Peshawar'.tr,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 60.h,
                      left: 0.w,
                      right: 0.w,
                      child: CustomTextRich(
                        text1: 'Remaining time to Fajir pray'.tr,
                        colorText1: Colors.white,
                        textWeight1: FontWeight.w400,
                        sizeText1: 18.sp,
                        text2: '00:53:14',
                        sizeText2: 20.sp,
                        colorText2: Colors.white,
                        textWeight2: FontWeight.bold,
                      ),
                    ),

                    Positioned(
                      top: 115.h,
                      left: 15.w,
                      right: 15.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(5, (index) {
                          return Column(
                            children: [
                              Text(
                                homeScreenViewModel.namazNames[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                homeScreenViewModel.namazTimes[index],
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 13.sp,
                                ),
                              ),
                            ],
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 320.h,
            left: 20.w,
            right: 20.w,
            child: SizedBox(
              height: 300.h,
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 40.w,
                  mainAxisSpacing: 20.h,
                  childAspectRatio: 0.75,
                ),
                itemCount: homeScreenViewModel.gridData.length,
                itemBuilder: (contex, index) {
                  return Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 37.r,
                          backgroundColor: Color(0xFF084716),
                          child: CircleAvatar(
                            backgroundColor: Color(0xFFE2BE7F),
                            radius: 34.r,
                            child: CircleAvatar(
                              radius: 30.r,
                              backgroundColor: Color(0xFF084716),
                              child: ClipOval(
                                child: SizedBox(
                                  width: 30.w,
                                  height: 30.h,
                                  child: Image.asset(
                                    homeScreenViewModel
                                        .gridData[index]['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 5.h),
                        FittedBox(
                          child: Text(
                            homeScreenViewModel.gridData[index]['name'],
                            style: TextStyle(
                              color: Color(0xFF084716),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
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
