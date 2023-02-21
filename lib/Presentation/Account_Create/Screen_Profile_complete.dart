import 'package:flutter/material.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:gender_picker/source/gender_picker.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';

import 'package:nutry_fit/Core/colors.dart';

import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/Screen_page4.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashD/Screen_goals1.dart';

class Screen_Profile_complete extends StatelessWidget {
  Screen_Profile_complete({Key? key}) : super(key: key);
  TextEditingController _weigtcontroller = TextEditingController();
  TextEditingController _heigtcontroller = TextEditingController();

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
                    genderpick(false, false),
                    // textFieldwithsufixIconTogglebar(
                    //     hinttexxt: 'Choose gender',
                    //     PrefixxIcon: Icons.person_outline),
                    // textField(
                    //     hinttexxt: 'Date of birth',
                    //     PrefixxIcon: Icons.date_range_rounded),
                    textFieldwithContainer(
                        controller: _weigtcontroller,
                        text: 'KG',
                        PrefixxIcon: Icons.line_weight_rounded,
                        hinttexxt: 'Your weight'),
                    textFieldwithContainer(
                        controller: _heigtcontroller,
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

  genderpick(bool _vertical, bool _othergender) {
    return Container(
      child: GenderPickerWithImage(
          onChanged: (Gender? _gender) {
            print(_gender);
          },
          verticalAlignedText: _vertical,
          showOtherGender: _othergender,
          selectedGender: Gender.Male,
          equallyAligned: true,
          isCircular: true,
          selectedGenderTextStyle:
              TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          unSelectedGenderTextStyle:
              TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          size: 34,
          padding: EdgeInsets.only(left: 58, top: 10, bottom: 20)),
    );
  }
}
