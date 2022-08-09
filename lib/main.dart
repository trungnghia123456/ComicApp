import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:manga_app_project/model/scroll_behavior.dart';
import 'package:manga_app_project/resource/color.dart';
import 'package:manga_app_project/view/detail_screen/detail_main_page.dart';
import 'package:manga_app_project/view/main_page/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        scrollBehavior: AppScrollBehavior(),
        title: 'Flutter Demo',
        theme: ThemeData(
            scaffoldBackgroundColor: ScaffordColor,
            primarySwatch: Colors.green,
            primaryColor: Colors.black),
        home: MainPage());
  }
}
