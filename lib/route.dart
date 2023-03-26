// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:the_quran_app/constants/string.dart';

import 'pages/splash/views/splash_view.dart';

class AppRoute {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: AppString.initialRoute, page: () => const SplashView())
  ];
}
