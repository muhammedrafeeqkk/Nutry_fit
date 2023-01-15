import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Screen_Premium_mainPage.dart';

import '../../Core/Images.dart';
import '../../Core/Text.dart';

iconText({required String text, required IconData iconshape}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            iconshape,
            color: green,
            size: 24,
          ),
        ),
        Colortext(text: text, size: 12, weight: FontWeight.w500, color: white)
      ],
    ),
  );
}

class premiumContainer extends StatelessWidget {
  const premiumContainer({
    Key? key,
    required this.screenwidth,
    required this.screenheight,
  }) : super(key: key);

  final double screenwidth;
  final double screenheight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Screen_Premium(),
          )),
      child: Container(
        width: screenwidth * 0.89,
        height: screenheight * 0.21,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: skyBlack,
        ),
        child: Column(children: [
          Expanded(
              flex: 9,
              child: Row(
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
                            iconText(
                                text: 'Unlimited Goals',
                                iconshape: Icons.fingerprint),
                            iconText(
                                iconshape: Icons.align_vertical_bottom,
                                text: 'View All States'),
                            iconText(
                                iconshape: Icons.accessibility_sharp,
                                text: 'Unlimited Workouts'),
                            iconText(
                                iconshape: Icons.supervisor_account_sharp,
                                text: 'Customer Care Service')
                          ],
                        ),
                      ))
                ],
              )),
          Expanded(
              flex: 3,
              child: Container(
                  child: Center(
                    child: Colortext(
                        text: 'upgrade to premium !',
                        size: 15,
                        weight: FontWeight.w500,
                        color: white),
                  ),
                  height: screenheight * 0.09,
                  decoration: const BoxDecoration(
                    gradient: blackGradientcolor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18),
                        bottomRight: Radius.circular(18)),
                  )))
        ]),
      ),
    );
  }
}
