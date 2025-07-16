import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RegistrationScreen1ViewModel extends ChangeNotifier {
  String selectedCountry = 'Pakistan';
  String phoneCode = '+92';
  final TextEditingController phoneController = TextEditingController();

  final List<Map<String, String>> countries = [
    {'name': 'Pakistan', 'code': '+92'},
    {'name': 'Saudi Arabia', 'code': '+966'},
    {'name': 'UAE', 'code': '+971'},
  ];

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  void showStyledNumberDialog(BuildContext context, String phoneNumber) {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Is this the correct number?".tr,
                    style: TextStyle(fontSize: 14.sp, color: Colors.black87),
                  ),
                  SizedBox(height: 8),
                  Text(
                    phoneNumber,
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Edit".tr,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Get.toNamed(RoutesNames.RegistrationScreen2);
                        },
                        child: Text(
                          "Yes".tr,
                          style: TextStyle(
                            color: Colors.green[800],
                            fontWeight: FontWeight.bold,
                          ),
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
    );
  }
}
