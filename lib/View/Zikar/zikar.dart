import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:aldallah/View/Zikar/zakir_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Zikar extends StatefulWidget {
  const Zikar({super.key});

  @override
  State<Zikar> createState() => _ZikarState();
}

class _ZikarState extends State<Zikar> {
  @override
  Widget build(BuildContext context) {
    final zikarScreenViewModel = Provider.of<ZakirViewModel>(context);
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
                  'Zikar',
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
            left: 0.w,
            right: 0.w,
            child: SizedBox(
              height: 900.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                // physics: ScrollPhysics(),
                itemCount: zikarScreenViewModel.mosqueList.length,
                itemBuilder: (context, index) {
                  return Opacity(
                    opacity: 0.7,
                    child: InkWell(
                      onTap: () => Get.toNamed(RoutesNames.ZakirScreen2),
                      child: Container(
                        height: 80.h,
                        width: double.infinity.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white24, width: 2.w),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 4,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    child: Image.asset(
                                      'assets/tasbhee.png',
                                      height: 45.h,
                                      width: 45.w,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Text(
                                    zikarScreenViewModel
                                        .mosqueList[index]['name'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                child: Image.asset(
                                  'assets/dropdowmicon2.png',
                                  height: 45.h,
                                  width: 45.w,
                                ),
                              ),
                            ],
                          ),
                        ),
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
