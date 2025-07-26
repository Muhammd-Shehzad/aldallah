import 'package:aldallah/Model/Utils/Language/language.dart';
import 'package:aldallah/Model/Utils/Routes/routes.dart';
import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:aldallah/View/Home/HomeScreen/home_screen_view_model.dart';
import 'package:aldallah/View/Home/home_view_model.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen1/registration_screen1_view_model.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen2/registration_screen2_view_model.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen3/registration_screen3_view_model.dart';
import 'package:aldallah/View/language/language_screen_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ScreenUtilInit(
      minTextAdapt: true,
      designSize: Size(360, 690),
      splitScreenMode: true,
      builder:
          (context, child) => MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => LanguageScreenViewModel(),
              ),
              ChangeNotifierProvider(
                create: (context) => RegistrationScreen1ViewModel(),
              ),
              ChangeNotifierProvider(
                create: (context) => RegistrationScreen2ViewModel(),
              ),
              ChangeNotifierProvider(
                create: (context) => RegistrationScreen3ViewModel(),
              ),
              ChangeNotifierProvider(create: (context) => HomeViewModel()),
              ChangeNotifierProvider(
                create: (context) => HomeScreenViewModel(),
              ),
            ],
            child: GetMaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: RoutesNames.SplahScreen,
              onGenerateRoute: Routes.generateRoute,
              translations: AppTranslations(),
              locale: const Locale('en', 'US'),
              fallbackLocale: const Locale('en', 'US'),
            ),
          ),
    ),
  );
}
