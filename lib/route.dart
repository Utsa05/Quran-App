// ignore_for_file: depend_on_referenced_packages

import 'package:get/get.dart';
import 'package:the_quran_app/constants/string.dart';
import 'package:the_quran_app/pages/home/views/home_view.dart';

class AppRoute {
  static List<GetPage<dynamic>> routes = [
    GetPage(name: AppString.initialRoute, page: () => const HomeView())
  ];
}
