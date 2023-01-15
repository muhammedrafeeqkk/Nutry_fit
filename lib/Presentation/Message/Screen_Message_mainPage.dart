import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';

import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Message/widget.dart';

import '../../Core/Images.dart';

class Screen_Message extends StatelessWidget {
  const Screen_Message({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      height: screenheight,
      width: screenwidth,
      decoration: BoxDecoration(gradient: GreenGradientcolor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: Container(
                height: screenheight * 0.23,
                width: screenwidth * 0.5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: greyHardLite,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Colortext(
                          text: 'Sorry...😢😢',
                          size: 18,
                          weight: FontWeight.w500,
                          color: Colors.red),
                    ),
                    Colortext(
                        text:
                            'This feature aplicable \n   for only premium \n         members ',
                        size: 13,
                        weight: FontWeight.w400,
                        color: black),
                    Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Colortext(
                            text: 'Upgrade to premium \n               NOw!!!',
                            size: 13,
                            weight: FontWeight.w400,
                            color: black)),
                  ],
                )),
          ),
          premiumContainer(screenwidth: screenwidth, screenheight: screenheight)
        ],
      ),
    ));
  }
}





