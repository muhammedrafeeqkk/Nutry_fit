import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Community/widget.dart';

import '../../Core/Text.dart';

class Screen_Community extends StatefulWidget {
  const Screen_Community({Key? key}) : super(key: key);

  @override
  State<Screen_Community> createState() => _Screen_CommunityState();
}

class _Screen_CommunityState extends State<Screen_Community> {
  PageController page = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 90),
      child: PageView(
        controller: page,
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        children: [
          textINstructionField(
            screenwidth,
            screenheight,
            'Heading1',
            'It will help us to choose a best\n             program for you',
          ),
          Container(
              child: Image(
                  image: AssetImage('assets/images/Frame 15.png'),
                  fit: BoxFit.fill),
              width: screenwidth * 0.78,
              height: screenheight * 0.65,
              decoration: BoxDecoration(
                  gradient: GreenGradientcolor,
                  borderRadius: BorderRadiusDirectional.circular(20))),
          // ListView.builder(
          //     itemBuilder: (context, index) => Padding(
          //           padding: EdgeInsets.all(40),
          //           child: textINstructionField(
          //             screenwidth,
          //             screenheight,
          //             'Heading1',
          //             'It will help us to choose a best\n             program for you',
          //           ),
          //         )),
          // ListView.builder(
          //     itemBuilder: (context, index) => Padding(
          //           padding: EdgeInsets.all(40),
          //           child: Container(
          //               child: Image(
          //                   image: AssetImage('assets/images/Frame 15.png'),
          //                   fit: BoxFit.fill),
          //               width: screenwidth * 0.78,
          //               height: screenheight * 0.65,
          //               decoration: BoxDecoration(
          //                   gradient: GreenGradientcolor,
          //                   borderRadius: BorderRadiusDirectional.circular(20))),
          //         )),
        ],
      ),
    ));
  }
}
