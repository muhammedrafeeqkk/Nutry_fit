import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashA/splash1.dart';

import '../../../Account_Create/Screen_Create.dart';
import '../Screen_page2.dart';

Text description(Description) {
  return Text(
    Description,
    style: TextStyle(
      color: grey,
      fontSize: 15,
    ),
  );
}

Text heading(textheading) {
  return Text(
    textheading,
    style: TextStyle(fontSize: 20, color: grey, fontWeight: FontWeight.w700),
  );
}

Widget Screen_description(
    {required BuildContext context,
    required CustomClipper,
    required headingg,
    required description1,
    required navigatToPageName}) {
  final screenwidth = MediaQuery.of(context).size.width;
  final screenheight = MediaQuery.of(context).size.height;
  return Container(
    child: Stack(
      children: [
        Opacity(opacity: 0.5),
        ClipPath(
          clipper: CustomClipper,
          child: Container(
            decoration: BoxDecoration(
              gradient: GreenGradientcolor,
            ),
            height: screenheight * 1,
          ),
        ),
        Positioned(
          top: screenheight * 0.05,
          right: screenwidth * 0.05,
          child: InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Screen_account_create(),
                )),
            child: Text(
              'skip',
              style: TextStyle(fontWeight: FontWeight.w700, color: grey),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [heading(headingg), description(description1)],
          ),
        ),
        Positioned(
            right: screenwidth * 0.09,
            top: screenheight * 0.875,
            child: GestureDetector(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navigatToPageName,
                  )),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    gradient: GreenGradientcolor),
                width: screenwidth * 0.138,
                height: screenwidth * 0.138,
                child: Icon(
                  Icons.navigate_next,
                  color: white,
                ),
              ),
            ))
      ],
    ),
  );
}
