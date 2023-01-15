import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets.dart';

class Screen_Settings extends StatelessWidget {
  const Screen_Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 80),
        child: Container(
          height: screenwidth * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  child: NormaliconText(
                      text: 'Notification',
                      iconshape: Icons.notifications_on_outlined),
                  onTap: () {}),
              InkWell(
                  child:
                      NormaliconText(text: 'Log out', iconshape: Icons.logout),
                  onTap: () {}),
              InkWell(
                  child: NormaliconText(
                      text: 'Delete Account', iconshape: Icons.delete),
                  onTap: () {}),
              InkWell(
                  child: NormaliconText(
                      text: 'Rate Us', iconshape: Icons.rate_review),
                  onTap: () {}),
              InkWell(
                  child: NormaliconText(
                      text: 'Support', iconshape: Icons.support_agent_rounded),
                  onTap: () {}),
              InkWell(
                  child: NormaliconText(
                    text: 'Settings',
                    iconshape: Icons.settings,
                  ),
                  onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
