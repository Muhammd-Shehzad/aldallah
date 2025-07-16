import 'package:aldallah/Model/Utils/Custom/CustomButton/custom_button.dart';
import 'package:aldallah/Model/Utils/Custom/CustomTextRich/custom_text_rich.dart';
import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen2/registration_screen2_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class RegistrationScreen2 extends StatefulWidget {
  const RegistrationScreen2({super.key});

  @override
  State<RegistrationScreen2> createState() => _RegistrationScreen2State();
}

class _RegistrationScreen2State extends State<RegistrationScreen2> {
  @override
  Widget build(BuildContext context) {
    final registrationScreen2ViewModel =
        Provider.of<RegistrationScreen2ViewModel>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            ),
            SizedBox(height: 10.h),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'OTP Verification'.tr,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: 'Enter the verification we’ve sent to'.tr,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.sp,
                            ),
                          ),
                          TextSpan(
                            text: '+92*** ***675',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) {
                      return Container(
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              offset: Offset(0, -2),
                              blurRadius: 4,
                              spreadRadius: 0,
                            ),
                          ],
                        ),
                        child: TextField(
                          controller:
                              registrationScreen2ViewModel
                                  .otpControllers[index],
                          focusNode:
                              registrationScreen2ViewModel.focusNodes[index],
                          onChanged:
                              (value) => registrationScreen2ViewModel
                                  .onOtpChanged(index, value),
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            counterText: "",
                          ),
                        ),
                      );
                    }),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn't receive the OTP? ".tr),
                      TextButton(
                        onPressed: () {
                          print("Resend OTP");
                        },
                        child: Text(
                          "RESEND OTP".tr,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green.shade900,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 200.h),
                  Center(
                    child: CustomButton(
                      onPressed: () {
                        registrationScreen2ViewModel.showStyledNumberDialog(
                          context,
                        );
                        Future.delayed(Duration(seconds: 2), () {
                          Get.toNamed(RoutesNames.RegistrationScreen3);
                        });
                      },

                      btnHeight: 40.h,
                      btnWidth: 153.w,
                      btnColor: Color(0xFF084716),
                      btnText: 'Verify'.tr,
                      btnTextColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
