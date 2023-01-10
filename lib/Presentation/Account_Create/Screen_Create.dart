import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_Profile_complete.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_welcomeBack.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

class Screen_account_create extends StatelessWidget {
  const Screen_account_create({Key? key}) : super(key: key);

  // bool istaped = false;

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizzbox(screenheight, 0.065),
              Column(
                children: [
                  Text('Hey there,'),
                  heading(heading: 'Create an account')
                ],
              ),
              sizzbox(screenheight, 0.02),
              textField(
                  PrefixxIcon: Icons.person_outline, hinttexxt: 'First name'),
              textField(
                  PrefixxIcon: Icons.person_outline, hinttexxt: 'Last name'),
              textField(PrefixxIcon: Icons.email_outlined, hinttexxt: 'E-mail'),
              textField(PrefixxIcon: Icons.phone_outlined, hinttexxt: 'Phone'),
              textFieldwithsufixIcon(
                  PrefixxIcon: Icons.lock_outlined, hinttexxt: 'Password'),
              textFieldwithsufixIcon(
                  PrefixxIcon: Icons.lock_outlined,
                  hinttexxt: 'Conform Password'),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Container(
                      width: 17,
                      height: 17,
                      decoration: BoxDecoration(
                          // color: Colors.blue,
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Text(
                      ' By continuing you acceot our privacy  policy and\n turm fo use',
                      style: TextStyle(fontSize: 10, color: grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                    child: getStartedButton(texxt: 'Register'),
                    onTap: (() => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen_Profile_complete(),
                        )))),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(children: [
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "Or",
                      style: TextStyle(color: grey),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 2,
                  )),
                ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  loginWithWb(
                    screenwidth,
                    'assets/images/facebook logo.png',
                  ),
                  loginWithWb(
                    screenwidth,
                    'assets/images/Google - Original.png',
                  ),
                ],
              ),
              sizzbox(screenheight, 0.01),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Normaltext(
                      text: 'Already Have An Account?',
                      size: 13,
                      weight: FontWeight.w400),
                  InkWell(
                    child: Colortext(
                        text: 'Login',
                        size: 12,
                        weight: FontWeight.w800,
                        color: pink),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen_Welcome_back(),
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
