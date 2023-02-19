import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';

import 'package:nutry_fit/Core/colors.dart';

import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/Screen_page4.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashD/Screen_goals1.dart';

class Screen_Profile_complete extends StatelessWidget {
  const Screen_Profile_complete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        child: Stack(children: [
          Opacity(opacity: 0.5),
          ClipPath(
            clipper: CustomShapeClass4(),
            child: Container(
              decoration: BoxDecoration(
                gradient: GreenGradientcolor,
              ),
              height: screenheight * 1,
            ),
          ),
          Positioned(
            top: screenheight * 0.35,
            child: Container(
              width: screenwidth,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    heading(heading: " Let's Complete You Profile"),
                    Padding(
                      padding: EdgeInsets.all(3),
                      child: Colortext(
                          color: grey,
                          text: 'It will help us to know more about you',
                          size: 10,
                          weight: FontWeight.w500),
                    ),
                    sizzbox(screenheight, 0.03),
                    textFieldwithsufixIconTogglebar(
                        hinttexxt: 'Choose gender',
                        PrefixxIcon: Icons.person_outline),
                    // textField(
                    //     hinttexxt: 'Date of birth',
                    //     PrefixxIcon: Icons.date_range_rounded),
                    textFieldwithContainer(
                        text: 'KG',
                        PrefixxIcon: Icons.line_weight_rounded,
                        hinttexxt: 'Your weight'),
                    textFieldwithContainer(
                        text: 'CM',
                        PrefixxIcon: Icons.height_rounded,
                        hinttexxt: ' Your height'),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenheight * 0.09),
                      child: InkWell(
                          onTap: (() => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen_Goals1(),
                              ))),
                          child: getStartedButton(texxt: 'Next >')),
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
