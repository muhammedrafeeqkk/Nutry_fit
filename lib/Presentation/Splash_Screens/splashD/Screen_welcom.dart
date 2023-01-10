import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';

import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

class Screen_welcome extends StatelessWidget {
  const Screen_welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            sizzbox(screenheight, 0.43),
            heading(heading: 'Welcome,Rafeeq'),
            sizzbox(screenheight, 0.02),
            Normaltext(
                text:
                    "you are all set now.let's reach you\n           good together with us",
                size: 12,
                weight: FontWeight.w300),
            sizzbox(screenheight, 0.18),
            getStartedButton(texxt: 'Go to home')
          ],
        ),
      ),
    );
  }
}
