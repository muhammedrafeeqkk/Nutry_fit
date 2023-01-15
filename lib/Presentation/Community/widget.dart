import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';

import '../../Core/Text.dart';

textINstructionField(double screenwidth, double screenheight, String heading,
    String description) {
  return Container(
    width: screenwidth * 0.8,
    height: screenheight * 0.65,
    decoration: BoxDecoration(
        gradient: GreenGradientcolor,
        borderRadius: BorderRadiusDirectional.circular(20)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Colortext(
            text: heading, size: 18, weight: FontWeight.w500, color: white),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 60),
          child: Divider(
            thickness: 1,
            color: white,
          ),
        ),
        Colortext(
            text: description, size: 11, weight: FontWeight.w500, color: white),
      ],
    ),
  );
}
