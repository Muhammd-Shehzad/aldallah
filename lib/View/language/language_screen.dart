// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class LanguageScreen extends StatefulWidget {
//   const LanguageScreen({super.key});

//   @override
//   State<LanguageScreen> createState() => _LanguageScreenState();
// }

// class _LanguageScreenState extends State<LanguageScreen> {
//   String _selectedLanguage = 'English';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 60.h),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: Text.rich(
//                 TextSpan(
//                   children: [
//                     TextSpan(
//                       text: 'Welcome to Aldaalah\n',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 20.sp,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     TextSpan(
//                       text: 'Choose your language to get started',
//                       style: TextStyle(
//                         color: Colors.black54,
//                         fontSize: 14.sp,
//                         fontWeight: FontWeight.normal,
//                       ),
//                     ),
//                   ],
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             SizedBox(height: 40.h),

//             RadioListTile<String>(
//               value: 'English',
//               groupValue: _selectedLanguage,
//               activeColor: Color(0xFF015B15),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedLanguage = value!;
//                 });
//               },
//               title: Text('English', style: TextStyle(fontSize: 16.sp)),
//             ),
//             RadioListTile<String>(
//               value: 'Arabic',
//               groupValue: _selectedLanguage,
//               activeColor: Color(0xFF015B15),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedLanguage = value!;
//                 });
//               },
//               title: Text('Arabic', style: TextStyle(fontSize: 16.sp)),
//             ),
//             RadioListTile<String>(
//               value: 'Urdu',
//               groupValue: _selectedLanguage,
//               activeColor: Color(0xFF015B15),
//               onChanged: (value) {
//                 setState(() {
//                   _selectedLanguage = value!;
//                 });
//               },
//               title: Text('Urdu', style: TextStyle(fontSize: 16.sp)),
//             ),
//           ],
//         ),
//       ),
//     );

//     // Column(
//     //   mainAxisAlignment: MainAxisAlignment.center,

//     //   children: [
//     //     Center(
//     //       child: Text.rich(
//     //         TextSpan(
//     //           children: [
//     //             TextSpan(
//     //               text: 'Welcome to Aldaalah\n',
//     //               style: TextStyle(
//     //                 color: Colors.black,
//     //                 fontSize: 20.sp,
//     //                 fontWeight: FontWeight.bold,
//     //               ),
//     //             ),
//     //             TextSpan(
//     //               text: 'Choose your language to get started',
//     //               style: TextStyle(
//     //                 color: Colors.black,
//     //                 fontSize: 14.sp,
//     //                 fontWeight: FontWeight.w400,
//     //               ),
//     //             ),
//     //           ],
//     //         ),
//     //         textAlign: TextAlign.center,
//     //       ),
//     //     ),
//     //   ],
//     // ),
//   }
// }

import 'package:aldallah/Model/Utils/Custom/CustomButton/custom_button.dart';
import 'package:aldallah/Model/Utils/Custom/CustomTextRich/custom_text_rich.dart';
import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:aldallah/View/language/language_screen_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class LanguageSelectionScreen extends StatefulWidget {
  const LanguageSelectionScreen({super.key});

  @override
  State<LanguageSelectionScreen> createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    final langScreenViewModel = Provider.of<LanguageScreenViewModel>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 60.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextRich(
              text1: 'welcome'.tr + '\n',
              text2: 'choose'.tr,
              sizeText1: 20.sp,
              sizeText2: 14.sp,
            ),
            SizedBox(height: 40.h),
            RadioListTile<String>(
              value: 'en_US',
              groupValue: langScreenViewModel.selectedLanguage,
              activeColor: const Color(0xFF015B15),
              onChanged: langScreenViewModel.changeLanguage,
              title: Text('english'.tr, style: TextStyle(fontSize: 16.sp)),
            ),
            RadioListTile<String>(
              value: 'ar_SA',
              groupValue: langScreenViewModel.selectedLanguage,
              activeColor: const Color(0xFF015B15),
              onChanged: langScreenViewModel.changeLanguage,
              title: Text('arabic'.tr, style: TextStyle(fontSize: 16.sp)),
            ),
            RadioListTile<String>(
              value: 'ur_PK',
              groupValue: langScreenViewModel.selectedLanguage,
              activeColor: const Color(0xFF015B15),
              onChanged: langScreenViewModel.changeLanguage,
              title: Text('urdu'.tr, style: TextStyle(fontSize: 16.sp)),
            ),
            SizedBox(height: 300.h),
            Center(
              child: CustomButton(
                onPressed: () => Get.toNamed(RoutesNames.RegistrationScreen1),
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
