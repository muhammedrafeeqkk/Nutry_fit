import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Home/Screen_Notification.dart';
import 'package:nutry_fit/Presentation/Home/widget.dart';
import 'package:pie_chart/pie_chart.dart';

class Screen_Home extends StatelessWidget {
  Screen_Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            sizzbox(screenheight, 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Colortext(
                        text: 'Welcome back,',
                        size: 15,
                        weight: FontWeight.w400,
                        color: grey),
                    heading(heading: 'Muhammed Rafeeq')
                  ],
                ),
                Container(
                  child: IconButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen_Notification(),
                          )),
                      icon: Icon(Icons.notifications_outlined)),
                  decoration: BoxDecoration(
                      color: greyHardLite,
                      borderRadius: BorderRadius.circular(8)),
                  height: 40,
                  width: 40,
                )
              ],
            ),
            sizzbox(screenheight, 0.035),
            Container(
              height: screenheight * 0.21,
              width: screenwidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: GreenGradientcolor),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Normaltext(
                              text: "BMI (body mass index)",
                              size: 14,
                              weight: FontWeight.w600),
                          Normaltext(
                              text: '   you have a normal weight',
                              size: 11,
                              weight: FontWeight.normal),
                        ],
                      ),
                    ),
                    Flexible(flex: 3, child: pieCHartWidget(screenwidth))
                  ],
                ),
              ),
            ),
            sizzbox(screenheight, 0.02),
            Container(
              decoration: BoxDecoration(
                  gradient: GreenliteGradientcolor,
                  borderRadius: BorderRadius.circular(15)),
              width: screenwidth,
              height: screenheight * 0.073,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Normaltext(
                      text: "Today's Activity",
                      size: 13,
                      weight: FontWeight.w500),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        primary: Color.fromARGB(255, 9, 220, 16)),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10))),
                              height: screenheight * 0.3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  targetContainerInnerBottomSheet(
                                      screenheight, screenwidth)
                                ],
                              )),
                        ),
                      );
                    },
                    child: Normaltext(
                        text: 'Activity', size: 13, weight: FontWeight.w500),
                  )
                ],
              ),
            ),
            sizzbox(screenheight, 0.05),
            CarouselSlider(
              items: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: GreenGradientcolor,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: PinkGradientcolor,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: GreenliteGradientcolor,
                      borderRadius: BorderRadius.circular(15)),
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      gradient: PinkGradientcolor,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ],
              options: CarouselOptions(
                height: 250,
                viewportFraction: 0.8,
                enableInfiniteScroll: true,
                reverse: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 4),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                scrollDirection: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }

  Container targetContainerInnerBottomSheet(
      double screenheight, double screenwidth) {
    return Container(
      height: screenheight * 0.23,
      width: screenwidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: GreenliteGradientcolor),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 220, top: 20, bottom: 20),
            child: Normaltext(
                text: 'Today target', size: 16, weight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              todayTargets(
                  screenwidth: screenwidth,
                  TargetName: 'Water intake',
                  TargetCount: '8L'),
              todayTargets(
                  screenwidth: screenwidth,
                  TargetName: 'Foot steps',
                  TargetCount: '2000'),
            ],
          )
        ],
      ),
    );
  }

  todayTargets(
      {required double screenwidth,
      required String TargetCount,
      required String TargetName}) {
    return Container(
      height: screenwidth * 0.15,
      width: screenwidth * 0.28,
      decoration:
          BoxDecoration(color: white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Colortext(
              text: TargetCount,
              size: 14,
              weight: FontWeight.w400,
              color: Colors.blue),
          Colortext(
              text: TargetName, size: 12, weight: FontWeight.w500, color: grey)
        ],
      ),
    );
  }
}
