import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Services/firebaseServices.dart';

import '../../Splash_Screens/splashB/widgets/widget.dart';

class Screen_Profile_edit extends StatelessWidget {
  Screen_Profile_edit({Key? key}) : super(key: key);
  TextEditingController _firstnameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _conformPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                        radius: 65,
                        backgroundImage: NetworkImage(
                          "${FirebaseAuth.instance.currentUser!.photoURL}",
                        )
                        //AssetImage('assets/images/profile.png'),
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
                    controller: _lastnameController,
                    PrefixxIcon: Icons.person_outline,
                    hinttexxt: 'Last name'),
                textField(
                    PrefixxIcon: Icons.email_outlined,
                    hinttexxt: 'E-mail',
                    controller: _emailController),
                textField(
                    PrefixxIcon: Icons.phone_outlined,
                    hinttexxt: 'Phone',
                    controller: _phoneController),
                textFieldwithsufixIcon(
                    controller: _passwordController,
                    PrefixxIcon: Icons.lock_outlined,
                    hinttexxt: 'Password'),
                textFieldwithsufixIcon(
                    controller: _conformPasswordController,
                    PrefixxIcon: Icons.lock_outlined,
                    hinttexxt: 'Conform Password'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: InkWell(
                    child: getStartedButton(texxt: 'Update'),
                    onTap: () {
                      FirebaseAuth.instance.currentUser!
                          .updateEmail(_emailController.text)
                          .then((value) {
                        print("successfully changed");
                      }).onError((error, stackTrace) {
                        print(error.toString());
                      });
                    },
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 30),
                //   child: Row(children: [
                //     Expanded(
                //         child: Divider(
                //       thickness: 2,
                //     )),
                //     Padding(
                //       padding: EdgeInsets.symmetric(horizontal: 15),
                //       child: Text(
                //         "Or",
                //         style: TextStyle(color: grey),
                //       ),
                //     ),
                //     Expanded(
                //         child: Divider(
                //       thickness: 2,
                //     )),
                //   ]),
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: [
                //     loginWithWb(
                //       screenwidth,
                //       'assets/images/facebook logo.png',
                //     ),
                //     InkWell(
                //       onTap: () async {
                //         await firebaseServices().SigningWithGoole();
                //       },
                //       child: loginWithWb(
                //         screenwidth,
                //         'assets/images/Google - Original.png',
                //       ),
                //     ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
