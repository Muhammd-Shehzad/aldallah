import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

class RegistrationScreen2ViewModel extends ChangeNotifier {
  final List<FocusNode> focusNodes = List.generate(4, (_) => FocusNode());
  final List<TextEditingController> otpControllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  @override
  void dispose() {
    for (var node in focusNodes) {
      node.dispose();
    }
    for (var controller in otpControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void onOtpChanged(int index, String value) {
    if (value.length == 1 && index < 3) {
      focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      focusNodes[index - 1].requestFocus();
    }
  }

  void verifyOtp() {
    final otp = otpControllers.map((c) => c.text).join();
  }

  void showStyledNumberDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h),
                  Center(
                    child: CircleAvatar(
                      radius: 40.r,
                      backgroundColor: Colors.green.shade900,
                      child: Image.asset('assets/tick.png'),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    'Verification Successfuly'.tr,
                    style: TextStyle(color: Colors.black, fontSize: 14.sp),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
