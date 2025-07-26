import 'package:aldallah/View/Home/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    return Scaffold(
      bottomNavigationBar: Container(
        height: 70.h,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(3, (index) {
            final isSelected = homeViewModel.selectIndex == index;

            IconData icon;
            String label;
            switch (index) {
              case 0:
                icon = Icons.grid_view;
                label = 'Home'.tr;

                break;
              case 1:
                icon = Icons.chat_bubble_outline;
                label = 'Chat Hubs'.tr;
                break;
              default:
                icon = Icons.person_outline;
                label = 'Settings'.tr;
                break;
            }

            return GestureDetector(
              onTap: () => homeViewModel.onTapItem(index),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 2.h,
                    width: 60.w,
                    margin: EdgeInsets.only(bottom: 6),
                    decoration: BoxDecoration(
                      color:
                          isSelected
                              ? Colors.green.shade800
                              : Colors.transparent,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  Icon(
                    icon,
                    color: isSelected ? Colors.green.shade800 : Colors.grey,
                    size: 24.sp,
                  ),
                  SizedBox(height: 2.h),
                  Text(
                    label,
                    style: TextStyle(
                      color: isSelected ? Colors.green.shade800 : Colors.grey,
                      fontSize: 12,
                      fontWeight:
                          isSelected ? FontWeight.w600 : FontWeight.normal,
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
      body: homeViewModel.screens[homeViewModel.selectIndex],
    );
  }
}
