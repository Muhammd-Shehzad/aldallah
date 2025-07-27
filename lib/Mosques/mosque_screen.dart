import 'package:aldallah/Mosques/mosque_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class MosqueScreen extends StatefulWidget {
  const MosqueScreen({super.key});

  @override
  State<MosqueScreen> createState() => _MosqueScreenState();
}

class _MosqueScreenState extends State<MosqueScreen> {
  @override
  Widget build(BuildContext context) {
    final mosqueScreenViewModel = Provider.of<MosqueScreenViewModel>(context);
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
                Icon(Icons.arrow_back),
                SizedBox(width: 10.w),
                Text(
                  'Mosques',
                  style: TextStyle(color: Colors.black, fontSize: 18.sp),
                ),
              ],
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
                itemCount: mosqueScreenViewModel.mosqueList.length,
                itemBuilder: (context, index) {
                  return Container(
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
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                child: Image.asset(
                                  'assets/Vector@3x.png',
                                  height: 30.h,
                                  width: 30.w,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Text(
                                mosqueScreenViewModel.mosqueList[index]['name'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            mosqueScreenViewModel.mosqueList[index]['distance'],
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14.sp,
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
