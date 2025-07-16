import 'package:aldallah/Model/Utils/Custom/CustomButton/custom_button.dart';
import 'package:aldallah/Model/Utils/Custom/CustomTextRich/custom_text_rich.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen3/registration_screen3_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class RegistrationScreen3 extends StatefulWidget {
  const RegistrationScreen3({super.key});

  @override
  State<RegistrationScreen3> createState() => _RegistrationScreen3State();
}

class _RegistrationScreen3State extends State<RegistrationScreen3> {
  @override
  Widget build(BuildContext context) {
    final registrationScreen3ViewModel =
        Provider.of<RegistrationScreen3ViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextRich(
              text1: 'Profile Info'.tr,
              sizeText1: 20.sp,
              text2: 'Please provide your and and optional profile photo'.tr,
              sizeText2: 14.sp,
            ),
            SizedBox(height: 20.h),
            Center(
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 60.r,
                  backgroundColor: Color(0xFF7F9F86),
                  child: Center(
                    child: Image.asset(
                      'assets/camera.png',
                      height: 50.h,
                      width: 50.w,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextFormField(
                controller: registrationScreen3ViewModel.nameController,
                decoration: InputDecoration(),
              ),
            ),

            SizedBox(height: 250.h),
            Center(
              child: CustomButton(
                onPressed: () {},
                btnHeight: 40.h,
                btnWidth: 153.w,
                btnColor: Color(0xFF084716),
                btnText: 'Confirm'.tr,
                btnTextColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
