import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Screen_HomeWorkouts.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Screen_Simple_HomeWorkouts.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Widgets/widgets.dart';

import '../../../../Core/Text.dart';

Widget dietBottomSheet(
    double screenwidth, double screenheight, BuildContext context) {
  return ExerciseFieldContainer(
      showmodelitem: Container(
        height: screenwidth * 0.74,
        child: Column(
          children: [
            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
            Normaltext(text: 'Reminders', size: 15, weight: FontWeight.w400),
            dietItemsRow(
                screenheight: screenheight,
                timeText1: 'Early Morning',
                timeText2: 'Break Fast',
                timeInt1: '7:00 Am',
                timeInt2: '7:00 Am'),
            dietItemsRow(
                screenheight: screenheight,
                timeText1: 'Mid Morning',
                timeText2: 'Lunch',
                timeInt1: '7:00 Am',
                timeInt2: '7:00 Am'),
            dietItemsRow(
                screenheight: screenheight,
                timeText1: 'Tea Time',
                timeText2: 'Dinner',
                timeInt1: '7:00 Am',
                timeInt2: '7:00 Am'),
          ],
        ),
      ),
      context: context,
      screenwidth: screenwidth,
      exerciseType: 'Diet');
}

Widget exerciseBottomSheet(double screenwidth, BuildContext context) {
  return ExerciseFieldContainer(
      showmodelitem: Container(
        height: screenwidth * 0.327,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenwidth * 0.03),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Screen_Simple_homeWorkouts(),
                    )),
                child: CustomerServiceButton(
                    texxt: 'Simple home exercise for men & women',
                    gradient: GreenWithBlueGradientcolor),
              ),
            ),
            InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Screen_HomeWorkouts(),
                  )),
              child: CustomerServiceButton(
                  texxt: 'Home exercise for reduce belli fat',
                  gradient: GreenWithBlueGradientcolor),
            )
          ],
        ),
      ),
      context: context,
      screenwidth: screenwidth,
      exerciseType: 'Exercise');
}
