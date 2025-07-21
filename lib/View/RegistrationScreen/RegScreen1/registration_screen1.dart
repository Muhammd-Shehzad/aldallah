import 'package:aldallah/Model/Utils/Custom/CustomButton/custom_button.dart';
import 'package:aldallah/Model/Utils/Custom/CustomTextRich/custom_text_rich.dart';
import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen1/registration_screen1_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class RegistrationScreen1 extends StatefulWidget {
  const RegistrationScreen1({super.key});

  @override
  State<RegistrationScreen1> createState() => _RegistrationScreen1State();
}

class _RegistrationScreen1State extends State<RegistrationScreen1> {
  @override
  Widget build(BuildContext context) {
    final registrationScreen1ViewModel =
        Provider.of<RegistrationScreen1ViewModel>(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 50.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back),
            ),
            SizedBox(height: 30.h),
            CustomTextRich(
              text1: 'Enter your phone number'.tr,
              colorText1: Colors.black,
              sizeText1: 20.sp,
              text2: 'Adaalah will need to verify your account.'.tr,
              sizeText2: 14.sp,
              colorText2: Colors.black,
            ),

            SizedBox(height: 30.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black54)),
                ),
                child: DropdownButton<String>(
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: registrationScreen1ViewModel.selectedCountry,
                  icon: const Icon(Icons.arrow_drop_down),
                  items:
                      registrationScreen1ViewModel.countries.map((country) {
                        return DropdownMenuItem<String>(
                          value: country['name'],
                          child: Text(
                            country['name']!.tr,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        );
                      }).toList(),
                  onChanged: (value) {
                    final country = registrationScreen1ViewModel.countries
                        .firstWhere((e) => e['name'] == value);
                    setState(() {
                      registrationScreen1ViewModel.selectedCountry = value!;
                      registrationScreen1ViewModel.phoneCode = country['code']!;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Text(
                    registrationScreen1ViewModel.phoneCode,
                    style: TextStyle(fontSize: 16.sp),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: TextField(
                      controller: registrationScreen1ViewModel.phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Phone number'.tr,
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.sp,
                        ),
                        border: const UnderlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: CustomButton(
                onPressed: () {
                  registrationScreen1ViewModel.showStyledNumberDialog(
                    context,
                    registrationScreen1ViewModel.phoneController.text
                        .toString(),
                  );
                  registrationScreen1ViewModel.phoneController.clear();
                },

                btnHeight: 40.h,
                btnWidth: 153.w,
                btnColor: Color(0xFF084716),
                btnText: 'Next'.tr,
                btnTextColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
