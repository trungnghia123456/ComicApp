import 'package:flutter/material.dart';
import 'package:manga_app_project/view/main_page/main_page_appbar.dart';
import 'package:manga_app_project/view/main_page/main_page_body.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainPageAppBar('', '', '', context),
      body: MainPageBody(),
    );
  }
}
