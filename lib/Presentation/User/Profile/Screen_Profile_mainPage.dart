import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Message/widget.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Screen_unlocked1.dart';
import 'package:nutry_fit/Presentation/Premium/widgets.dart';

import 'Screen_profile_edit.dart';

class Screen_Profile extends StatelessWidget {
  const Screen_Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    sizzbox(screenheight, 0.1),
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                    ),
                    sizzbox(screenheight, 0.015),
                    Normaltext(
                        text: 'Muhammed Rafeeq ',
                        size: 18,
                        weight: FontWeight.w500),
                    sizzbox(screenheight, 0.003),
                    Colortext(
                        text: '9048939433',
                        size: 15,
                        weight: FontWeight.w500,
                        color: grey),
                    sizzbox(screenheight, 0.003),
                    Colortext(
                        text: 'rafeeqshan06@gmail.com',
                        size: 14,
                        weight: FontWeight.w500,
                        color: grey),
                    sizzbox(screenheight, 0.003),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 130),
                        primary: skyGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen_Profile_edit(),
                          )),
                      child: Normaltext(
                          text: 'Edit', size: 13, weight: FontWeight.w500),
                    ),
                    sizzbox(screenheight, 0.02),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          indent: 10,
                          endIndent: 10,
                          thickness: 2,
                        ),
                        sizzbox(screenheight, 0.02),
                        Normaltext(
                            text: 'Current packages',
                            size: 14,
                            weight: FontWeight.w600),
                      ],
                    )
                  ],
                )),
            Expanded(
                flex: 3,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => Column(
                    children: [
                      premiumItemsContainer(
                        navigateTo: Screen_Unlocked_1(),
                        screenwidth: screenwidth,
                        screenheight: screenheight,
                        feature1: 'open ANy Where',
                        feature2: 'open ANy Where',
                        feature3: 'open ANy Where',
                        featureIcon1: Icons.abc,
                        featureIcon2: Icons.abc,
                        featureIcon3: Icons.abc,
                        diseaseName: 'Denemia !',
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
