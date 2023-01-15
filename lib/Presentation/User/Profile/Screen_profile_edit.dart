import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';

import '../../Splash_Screens/splashB/widgets/widget.dart';

class Screen_Profile_edit extends StatelessWidget {
  const Screen_Profile_edit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 65,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  CircleAvatar(
                    backgroundColor: white,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt_outlined,
                          color: black,
                        )),
                  )
                ],
              ),
              sizzbox(screenheight, 0.04),
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
                padding: EdgeInsets.symmetric(vertical: 20),
                child: InkWell(
                  child: getStartedButton(texxt: 'Update'),
                  onTap: () {},
                ),
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
            ],
          ),
        ),
      ),
    );
  }
}
