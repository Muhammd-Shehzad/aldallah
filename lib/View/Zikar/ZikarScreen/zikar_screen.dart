import 'package:aldallah/View/Zikar/ZikarScreen/zikar_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';
import 'package:provider/provider.dart';

class ZikarScreen extends StatefulWidget {
  const ZikarScreen({super.key});

  @override
  State<ZikarScreen> createState() => _ZikarScreenState();
}

class _ZikarScreenState extends State<ZikarScreen> {
  @override
  Widget build(BuildContext context) {
    final zikarScreenViewModel = Provider.of<ZikarScreenViewModel>(context);
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
                  'ZikarScreen2',
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
          Column(
            children: [
              SizedBox(height: 80.h),
              Text(
                "${zikarScreenViewModel.currentPage + 1} out of ${zikarScreenViewModel.totalPages}",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value:
                        (zikarScreenViewModel.currentPage + 1) /
                        zikarScreenViewModel.totalPages,
                    minHeight: 8,
                    backgroundColor: Colors.green.shade200,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.green.shade900,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: PageView(
                  controller: zikarScreenViewModel.controller,
                  onPageChanged: (index) {
                    setState(() {
                      zikarScreenViewModel.currentPage = index;
                    });
                  },
                  children: [
                    Container(
                      height: double.infinity.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 10.h),
                              Container(
                                height: 30.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Center(
                                  child: Text(
                                    '${zikarScreenViewModel.currentPage} / ${zikarScreenViewModel.totalPages}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Text(
                                    'Repeat x1',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      style: TextStyle(fontSize: 24.sp),
                                      textAlign: TextAlign.right,
                                      'ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ',
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      style: TextStyle(
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                      textAlign: TextAlign.left,
                                      'Dhahaba al-zama wa’btalat al-‘uruq wa thabata al-ajr in sha Allah',
                                    ),
                                    SizedBox(height: 10.h),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        child: Text(
                                          'Translation:',
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.green.shade900,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
                                      'Thirst is gone, the veins are moistened, and the reward is certain if Allah wills.',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //here second page start
                    Container(
                      height: double.infinity.h,
                      width: double.infinity.w,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 10.h),
                              Container(
                                height: 30.h,
                                width: 100.w,
                                decoration: BoxDecoration(
                                  color: Colors.green.shade900,
                                  borderRadius: BorderRadius.circular(20.r),
                                ),
                                child: Center(
                                  child: Text(
                                    '${zikarScreenViewModel.currentPage} / ${zikarScreenViewModel.totalPages}',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 20,
                                  ),
                                  child: Text(
                                    'Repeat x1',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.green.shade900,
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 10,
                                  horizontal: 10,
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      style: TextStyle(fontSize: 24.sp),
                                      textAlign: TextAlign.right,
                                      'ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ وَثَبَتَ الأَجْرُ إِنْ شَاءَ اللَّهُ',
                                    ),
                                    SizedBox(height: 10.h),
                                    Text(
                                      style: TextStyle(fontSize: 20.sp),
                                      textAlign: TextAlign.left,
                                      'Dhahaba al-zama wa’btalat al-‘uruq wa thabata al-ajr in sha Allah',
                                    ),
                                    SizedBox(height: 10.h),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          vertical: 10,
                                        ),
                                        child: Text(
                                          'Translation:',
                                          style: TextStyle(
                                            fontSize: 18.sp,
                                            color: Colors.green.shade900,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                      textAlign: TextAlign.left,
                                      'Thirst is gone, the veins are moistened, and the reward is certain if Allah wills.',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
