import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';

import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

import '../../Main_page/Screen-Mainpages.dart';

class Screen_welcome extends StatelessWidget {
  const Screen_welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              sizzbox(screenheight, 0.43),
              heading(
                  heading:
                      'Welcome,${FirebaseAuth.instance.currentUser!.displayName}'),
              sizzbox(screenheight, 0.02),
              Normaltext(
                  text:
                      "you are all set now.let's reach you\n           good together with us",
                  size: 12,
                  weight: FontWeight.w300),
              sizzbox(screenheight, 0.18),
              InkWell(
                  onTap: (() => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Screen_MainPage(),
                      ))),
                  child: getStartedButton(texxt: 'Go to home'))
            ],
          ),
        ),
      ),
    );
  }
}
