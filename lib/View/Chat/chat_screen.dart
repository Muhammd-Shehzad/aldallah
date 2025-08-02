import 'package:aldallah/Model/Utils/CustomContainer/custom_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
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
            right: 20.w,
            child: SizedBox(
              width: double.infinity.w,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chats',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  CircleAvatar(
                    radius: 22.r,
                    backgroundColor: Color(0xFF084716),
                    child: CircleAvatar(
                      radius: 20.r,
                      backgroundColor: Colors.white,
                      // backgroundImage: AssetImage('assets/profile.png'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 100.h,
            left: 0.w,
            right: 0.w,

            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Search',
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 150.h,
            left: 0.w,
            right: 0.w,
            child: Container(
              width: double.infinity.w,

              child: Row(
                children: [
                  SizedBox(width: 20.w),

                  CustomContainer(
                    height: 30.h,
                    width: 80.w,
                    color: Colors.grey[200],
                    text: 'All',
                  ),
                  SizedBox(width: 10.w),

                  CustomContainer(
                    height: 30.h,
                    width: 100.w,
                    color: Colors.grey[200],
                    text: 'Unread',
                  ),
                  SizedBox(width: 10.w),
                  CustomContainer(
                    height: 30.h,
                    width: 100.w,
                    color: Colors.grey[200],
                    text: 'Groups',
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200.h,
            left: 0.w,
            right: 0.w,
            child: SizedBox(
              height: 900.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                // physics: ScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Opacity(
                    opacity: 0.7,
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
                          children: [
                            CircleAvatar(radius: 30.r),
                            SizedBox(width: 10.w),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Muhammad Shehzad',
                                      style: TextStyle(
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(width: 30.w),
                                    Text(
                                      '01:02:PM',
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'we will leave the house towmarrow',
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 15.h,
            right: 10.w,

            child: InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/addChatIcon.png',
                      height: 60.h,
                      width: 60.w,
                    ),
                    Positioned(
                      top: 20.h,
                      right: 20.w,
                      child: Image.asset('assets/add.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
