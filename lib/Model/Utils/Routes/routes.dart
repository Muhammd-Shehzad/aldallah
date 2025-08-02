import 'package:aldallah/Model/Utils/Routes/routes_names.dart';
import 'package:aldallah/NewChat/new_chat_screen.dart';
import 'package:aldallah/View/Chat/chat_screen.dart';
import 'package:aldallah/View/Dua/dua_screen.dart';
import 'package:aldallah/View/Hijj%20&%20Umrah/Guides/basic_umrah_guides.dart';
import 'package:aldallah/View/Hijj%20&%20Umrah/Guides/how_to_wear_ihram.dart';
import 'package:aldallah/View/Hijj%20&%20Umrah/Guides/into_to_hajj.dart';
import 'package:aldallah/View/Hijj%20&%20Umrah/hijj_umrah.dart';
import 'package:aldallah/View/HomeScreen/home_screen.dart';
import 'package:aldallah/View/Mosques/mosque_screen.dart';
import 'package:aldallah/View/Qibla/qibla_screen.dart';
import 'package:aldallah/View/Setting/setting_screen.dart';
import 'package:aldallah/View/Home/home.dart';
import 'package:aldallah/View/OnbordingScreens/indicator_screen.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen1/registration_screen1.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen2/registration_screen2.dart';
import 'package:aldallah/View/RegistrationScreen/RegScreen3/registration_screen3.dart';
import 'package:aldallah/View/Zikar/ZikarScreen/zikar_screen.dart';
import 'package:aldallah/View/Zikar/zikar.dart';
import 'package:aldallah/View/language/language_screen.dart';
import 'package:aldallah/View/SplahScreen/splah_screen.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case RoutesNames.SplahScreen:
        return GetPageRoute(settings: setting, page: () => SplahScreen());
      case RoutesNames.IndicatorScreen:
        return GetPageRoute(settings: setting, page: () => IndicatorScreen());
      case RoutesNames.LanguageScreen:
        return GetPageRoute(
          settings: setting,
          page: () => LanguageSelectionScreen(),
        );
      case RoutesNames.RegistrationScreen1:
        return GetPageRoute(
          settings: setting,
          page: () => RegistrationScreen1(),
        );
      case RoutesNames.RegistrationScreen2:
        return GetPageRoute(
          settings: setting,
          page: () => RegistrationScreen2(),
        );
      case RoutesNames.RegistrationScreen3:
        return GetPageRoute(
          settings: setting,
          page: () => RegistrationScreen3(),
        );
      case RoutesNames.Home:
        return GetPageRoute(settings: setting, page: () => Home());
      case RoutesNames.HomeScreen:
        return GetPageRoute(settings: setting, page: () => HomeScreen());
      case RoutesNames.ChatScreen:
        return GetPageRoute(settings: setting, page: () => ChatScreen());
      case RoutesNames.SettingScreen:
        return GetPageRoute(settings: setting, page: () => SettingScreen());
      case RoutesNames.DuaScreen:
        return GetPageRoute(settings: setting, page: () => DuaScreen());
      case RoutesNames.QiblaScreen:
        return GetPageRoute(settings: setting, page: () => QiblaScreen());
      case RoutesNames.ZikarScreen:
        return GetPageRoute(settings: setting, page: () => Zikar());
      case RoutesNames.MosqueScreen:
        return GetPageRoute(settings: setting, page: () => MosqueScreen());
      case RoutesNames.HijjAndUmrahScreen:
        return GetPageRoute(settings: setting, page: () => HijjUmrah());
      case RoutesNames.ZakirScreen2:
        return GetPageRoute(settings: setting, page: () => ZikarScreen());
      case RoutesNames.IntroToHajjScreen:
        return GetPageRoute(settings: setting, page: () => IntoToHajj());
      case RoutesNames.BasicUmrahGuidesScreen:
        return GetPageRoute(settings: setting, page: () => BasicUmrahGuides());
      case RoutesNames.HowToWearIhramScreen:
        return GetPageRoute(settings: setting, page: () => HowToWearIhram());
      case RoutesNames.NewChatScreen:
        return GetPageRoute(settings: setting, page: () => NewChatScreen());

      default:
        return GetPageRoute(
          settings: setting,
          page: () => Text('No Route Define'),
        );
    }
  }
}
