import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreenViewModel extends ChangeNotifier {
  String selectedLanguage = 'en_US';

  void changeLanguage(String? langCode) {
    if (langCode == null) return;
    Locale locale;
    if (langCode == 'en_US') {
      locale = const Locale('en', 'US');
    } else if (langCode == 'ar_SA') {
      locale = const Locale('ar', 'SA');
    } else {
      locale = const Locale('ur', 'PK');
    }

    Get.updateLocale(locale);
    selectedLanguage = langCode;
    notifyListeners();
  }
}
