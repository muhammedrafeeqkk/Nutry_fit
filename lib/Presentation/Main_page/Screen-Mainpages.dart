import 'package:flutter/material.dart';

import 'package:nutry_fit/Presentation/Community/Screen_Communit_mainPages.dart';
import 'package:nutry_fit/Presentation/Home/Screen_Home_mainPage.dart';
import 'package:nutry_fit/Presentation/Main_page/Bottom_navigation.dart';
import 'package:nutry_fit/Presentation/Message/Screen_Message_mainPage.dart';
import 'package:nutry_fit/Presentation/Premium/Screen_Premium_mainPage.dart';

import 'package:nutry_fit/Presentation/User/Screen_user.dart';

class Screen_MainPage extends StatelessWidget {
  Screen_MainPage({Key? key}) : super(key: key);

  final _pages = [
    Screen_Home(),
    Screen_Message(),
    Screen_Community(),
    Screen_Premium(),
    Screen_User(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: IndexvalueNotifier,
        builder: (context, int index, _) {
          return _pages[index];
        },
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
