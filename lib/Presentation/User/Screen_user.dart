import 'package:flutter/material.dart';

import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Presentation/Message/widget.dart';
import 'package:nutry_fit/Presentation/User/Settings/Screen_settings.dart';

import 'package:nutry_fit/Presentation/User/widgets.dart';

import 'Profile/Screen_Profile_mainPage.dart';

class Screen_User extends StatelessWidget {
  const Screen_User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Column(
            children: [
              sizzbox(screenheight, 0.06),
              premiumContainer(
                  screenwidth: screenwidth, screenheight: screenheight),
              sizzbox(screenheight, 0.05),
              const Divider(
                endIndent: 10,
                indent: 10,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Container(
                  height: screenwidth * 0.8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        child: NormaliconText(
                          text: 'Settings',
                          iconshape: Icons.settings,
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen_Settings(),
                            )),
                      ),
                      InkWell(
                        child: NormaliconText(
                          text: 'Profile',
                          iconshape: Icons.person_outline,
                        ),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen_Profile(),
                            )),
                      ),
                      NormaliconText(
                        text: 'Rate Us',
                        iconshape: Icons.rate_review,
                      ),
                      NormaliconText(
                        text: 'Support',
                        iconshape: Icons.support_agent_sharp,
                      ),
                      NormaliconText(
                        text: 'Share',
                        iconshape: Icons.share,
                      ),
                      NormaliconText(
                          text: 'About Us', iconshape: Icons.details_outlined),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
