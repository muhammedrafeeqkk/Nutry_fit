import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Core/images.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashA/splash1.dart';

import '../../splashC/Screen_page1.dart';

Column NutryFitGetStart(BuildContext context) {
  return Column(
    children: [
      Expanded(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          nutryLogoWithText,
          Text(
            '       Nutrition trough fitness...',
            style: TextStyle(color: grey),
          ),
        ],
      )),
      Expanded(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                child: getStartedButton(texxt: 'Get started'),
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen_Description1(),
                    )),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ],
      ))

      // const SizedBox(
      //   height: 200,
      // ),
    ],
  );
}

Container getStartedButton({ required String texxt}) {
  return Container(
    decoration: BoxDecoration(
      gradient: GreenGradientcolor,
      borderRadius: BorderRadius.circular(30),
    ),
    width: 342,
    height: 57,
    child: Center(
      child: Text(
        texxt,
        style:
            TextStyle(fontWeight: FontWeight.bold, color: white, fontSize: 16),
      ),
    ),
  );
}
