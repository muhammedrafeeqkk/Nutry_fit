import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';

import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_Create.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashD/Screen_welcom.dart';

class Screen_Goals1 extends StatefulWidget {
  const Screen_Goals1({Key? key}) : super(key: key);

  @override
  State<Screen_Goals1> createState() => _Screen_Goals1State();
}

class _Screen_Goals1State extends State<Screen_Goals1> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
              child: Container(
                child: PageView(
                  controller: page,
                  scrollDirection: Axis.horizontal,
                  pageSnapping: true,
                  children: [
                    Column(
                      children: [
                        sizzbox(screenheight, 0.06),
                        heading(heading: 'What is your goal?'),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Colortext(
                              text:
                                  'It will help us to choose a best\n             program for you',
                              size: 11,
                              weight: FontWeight.w500,
                              color: grey),
                        ),
                        sizzbox(screenheight, 0.01),
                        Container(
                          width: screenwidth * 0.7,
                          height: screenheight * 0.61,
                          decoration: BoxDecoration(
                              gradient: GreenGradientcolor,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Colortext(
                                  text: 'Heading1',
                                  size: 18,
                                  weight: FontWeight.w500,
                                  color: white),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 60),
                                child: Divider(
                                  thickness: 1,
                                  color: white,
                                ),
                              ),
                              Colortext(
                                  text:
                                      'It will help us to choose a best\n             program for you',
                                  size: 11,
                                  weight: FontWeight.w500,
                                  color: white),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        sizzbox(screenheight, 0.06),
                        heading(heading: 'What is your aim?'),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Colortext(
                              text:
                                  'It will help us to choose a best\n             program for you',
                              size: 11,
                              weight: FontWeight.w500,
                              color: grey),
                        ),
                        sizzbox(screenheight, 0.01),
                        Container(
                          width: screenwidth * 0.7,
                          height: screenheight * 0.61,
                          decoration: BoxDecoration(
                              gradient: GreenGradientcolor,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Colortext(
                                  text: 'Heading2',
                                  size: 18,
                                  weight: FontWeight.w500,
                                  color: white),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 60),
                                child: Divider(
                                  thickness: 1,
                                  color: white,
                                ),
                              ),
                              Colortext(
                                  text:
                                      'It will help us to choose a best\n             program for you',
                                  size: 11,
                                  weight: FontWeight.w500,
                                  color: white),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        sizzbox(screenheight, 0.06),
                        heading(heading: 'What is your passion?'),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Colortext(
                              text:
                                  'It will help us to choose a best\n             program for you',
                              size: 11,
                              weight: FontWeight.w500,
                              color: grey),
                        ),
                        sizzbox(screenheight, 0.01),
                        Container(
                          width: screenwidth * 0.7,
                          height: screenheight * 0.61,
                          decoration: BoxDecoration(
                              gradient: GreenGradientcolor,
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Colortext(
                                  text: 'Heading3',
                                  size: 18,
                                  weight: FontWeight.w500,
                                  color: white),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 60),
                                child: Divider(
                                  thickness: 1,
                                  color: white,
                                ),
                              ),
                              Colortext(
                                  text:
                                      'It will help us to choose a best\n             program for you',
                                  size: 11,
                                  weight: FontWeight.w500,
                                  color: white),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
              child: Container(
                child: InkWell(
                    onTap: () {
                      page.animateToPage(++pageIndex,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linearToEaseOut);
                      if (pageIndex == 3) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen_welcome(),
                            ));
                      }
                    },
                    child: getStartedButton(texxt: 'Submit')),
              ),
            ),
          )
        ],
      ),
    );
  }
}






//  Expanded(
//               flex: 2,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   sizzbox(screenheight, 0.068),
//                   heading(heading: 'What is your goal?'),
//                   Padding(
//                     padding: EdgeInsets.all(10),
//                     child: Colortext(
//                         text:
//                             'It will help us to choose a best\n             program for you',
//                         size: 11,
//                         weight: FontWeight.w500,
//                         color: grey),
//                   ),
//                 ],
//               )),

          // Expanded(
          //   flex: 8,
          //   child: Padding(
          //     padding: EdgeInsets.symmetric(horizontal: 45, vertical: 10),
          //     child: Container(
          //       child: PageView(
          //         controller: page,
          //         scrollDirection: Axis.horizontal,
          //         pageSnapping: true,
          //         children: [
          //           Container(
          //             child: Text('1'),
          //             width: screenwidth * 0.7,
          //             height: screenheight * 0.6,
          //             decoration: BoxDecoration(
          //                 gradient: GreenGradientcolor,
          //                 borderRadius: BorderRadiusDirectional.circular(20)),
          //           ),
          //           Container(
          //             child: Text('2'),
          //             width: screenwidth * 0.7,
          //             height: screenheight * 0.6,
          //             decoration: BoxDecoration(
          //                 gradient: GreenGradientcolor,
          //                 borderRadius: BorderRadiusDirectional.circular(20)),
          //           ),
          //           Container(
          //             child: Text('3'),
          //             width: screenwidth * 0.7,
          //             height: screenheight * 0.6,
          //             decoration: BoxDecoration(
          //                 gradient: GreenGradientcolor,
          //                 borderRadius: BorderRadiusDirectional.circular(20)),
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          // ),