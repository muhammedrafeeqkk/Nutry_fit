import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashA/splash1.dart';

ValueNotifier<int> IndexvalueNotifier = ValueNotifier(0);

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: IndexvalueNotifier,
      builder: (context, int NewIndex, child) {
        return BottomNavigationBar(
            fixedColor: mypink,
            unselectedItemColor: grey,
            currentIndex: NewIndex,
            onTap: (intex) {
              IndexvalueNotifier.value = intex;
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined), label: ''),
              BottomNavigationBarItem(icon: widget(), label: ''),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.lock_outline_rounded,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: ''),
            ]);
      },
    );
  }
}

widget() {
  return Container(
    width: 40,
    height: 40,
    child: Icon(
      Icons.bubble_chart_outlined,
      size: 25,
      color: white,
    ),
    decoration: BoxDecoration(
        gradient: GreenGradientcolor, borderRadius: BorderRadius.circular(90)),
  );
}
