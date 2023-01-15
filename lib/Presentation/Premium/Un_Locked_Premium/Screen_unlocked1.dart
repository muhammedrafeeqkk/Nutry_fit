import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Screen_unSubscribe.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Widgets/widgets.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

import '../../../Core/Images.dart';
import 'Widgets/Bottom_Sheet_Items.dart';

class Screen_Unlocked_1 extends StatelessWidget {
  const Screen_Unlocked_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: screenheight,
        width: screenwidth,
        decoration: BoxDecoration(gradient: GreenGradientcolor),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              sizzbox(screenheight, 0.032),
              Flexible(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen_unSubscribe(),
                          )),
                      icon: Icon(Icons.question_mark)),
                ],
              )),
              sizzbox(screenheight, 0.01),
              Container(
                width: screenwidth * 0.89,
                height: screenheight * 0.21,
                decoration: BoxDecoration(
                    color: greyHardLite,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Normaltext(
                          text: 'Congratulations🎉🎉',
                          size: 19,
                          weight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              child: Center(
                                child: nutryLogoOnlyNormal(width: 90),
                              ),
                            )),
                        Expanded(
                            flex: 5,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  iconcolorText(
                                      text: 'Unlimited Goals',
                                      iconshape: Icons.fingerprint),
                                  iconcolorText(
                                      iconshape: Icons.align_vertical_bottom,
                                      text: 'View All States'),
                                  iconcolorText(
                                      iconshape: Icons.supervisor_account_sharp,
                                      text: 'Customer Care Service'),
                                ],
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
              sizzbox(screenheight, 0.03),
              CustomerServiceButton(
                  texxt: 'cusomer service support',
                  gradient: GreenWithBlueGradientcolor),
              sizzbox(screenheight, 0.03),
              Padding(
                padding: EdgeInsets.only(right: screenwidth * 0.65),
                child: heading(heading: 'Activity'),
              ),
              sizzbox(screenheight, 0.015),
              exerciseBottomSheet(screenwidth, context),
              dietBottomSheet(screenwidth, screenheight, context),
              restBottomSheet(screenwidth, screenheight, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget restBottomSheet(
      double screenwidth, double screenheight, BuildContext context) {
    return ExerciseFieldContainer(
        showmodelitem: Container(
          height: screenwidth * 0.327,
          child: Column(
            children: [
              Padding(padding: EdgeInsets.symmetric(vertical: 5)),
              Normaltext(text: 'Reminders', size: 15, weight: FontWeight.w400),
              dietItemsRow(
                  screenheight: screenheight,
                  timeText1: 'Bed Time',
                  timeText2: 'Wake Up',
                  timeInt1: '7:00 Am',
                  timeInt2: '7:00 Pm'),
            ],
          ),
        ),
        context: context,
        screenwidth: screenwidth,
        exerciseType: 'Rest');
  }
}
