import 'dart:math';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gender_picker/gender_picker.dart';
import 'package:gender_picker/source/enums.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Core/Text.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_Profile_complete.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_welcomeBack.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';
import 'package:nutry_fit/Services/firebaseServices.dart';

class Screen_account_create extends StatelessWidget {
  Screen_account_create({Key? key}) : super(key: key);

  TextEditingController _nameController = TextEditingController();
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
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // sizzbox(screenheight, 0.065),
                Column(
                  children: [
                    Text('Hey there,'),
                    heading(heading: 'Create an account')
                  ],
                ),
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

                //sizzbox(screenheight, 0.02),
                textField(
                    PrefixxIcon: Icons.person_outline,
                    hinttexxt: 'name',
                    controller: _nameController),
                // textField(
                //     PrefixxIcon: Icons.person_outline,
                //     hinttexxt: 'Last name',
                //     controller: _lastnameController),
                textField(
                    PrefixxIcon: Icons.email_outlined,
                    hinttexxt: 'E-mail',
                    controller: _emailController),
                textField(
                    PrefixxIcon: Icons.phone_outlined,
                    hinttexxt: 'Phone',
                    controller: _phoneController),
                textFieldwithsufixIcon(
                    PrefixxIcon: Icons.lock_outlined,
                    hinttexxt: 'Password',
                    controller: _passwordController),
                textFieldwithsufixIcon(
                    PrefixxIcon: Icons.lock_outlined,
                    hinttexxt: 'Conform Password',
                    controller: _conformPasswordController),
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
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen_Profile_complete(),
                            ));
                        // conformpassword(
                        //     password: _passwordController.text,
                        //     conformpassword1: _conformPasswordController.text,
                        //     context: context);

                        // FirebaseAuth.instance.currentUser!
                        //     .updateDisplayName(_nameController.text)
                        //     .then((value) {
                        //   print("name successful");
                        // });
                        // FirebaseAuth.instance.currentUser!
                        //     .updatePhoneNumber(_phoneController.text
                        //       )
                        //     .then((value) {
                        //   print("number successful");
                        // });
                      })),
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
                    InkWell(
                      onTap: () {
                        var snackBar1 = SnackBar(
                          elevation: 0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Color.fromARGB(0, 0, 0, 0),
                          content: AwesomeSnackbarContent(
                            title: 'Alert!',
                            message: 'Facebook Server Side Error',
                            contentType: ContentType.failure,
                          ),
                        );
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(snackBar1);
                      },
                      child: loginWithWb(
                        screenwidth,
                        'assets/images/facebook logo.png',
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        await firebaseServices().SigningWithGoole();
                        var snackBar = SnackBar(
                          elevation: 0,
                          behavior: SnackBarBehavior.floating,
                          backgroundColor: Color.fromARGB(0, 0, 0, 0),
                          content: AwesomeSnackbarContent(
                            color: green,
                            title: 'Successfull!',
                            message: 'your Varification successfully created',
                            contentType: ContentType.failure,
                          ),
                        );
                        ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(snackBar);

                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen_Profile_complete(),
                            )).catchError(
                          (e) {
                            print(e.toString());
                            // var splitted = e.toString();
                            // final next = splitted.split();
                            // final neew = next[1];
                            var snackBar = SnackBar(
                              /// need to set following properties for best effect of awesome_snackbar_content
                              elevation: 0,
                              behavior: SnackBarBehavior.floating,
                              backgroundColor: Colors.transparent,

                              content: AwesomeSnackbarContent(
                                title: 'Alert!',

                                message: e.toString(),

                                /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
                                contentType: ContentType.failure,
                              ),
                            );
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(snackBar);
                          },
                        );
                      },
                      child: loginWithWb(
                        screenwidth,
                        'assets/images/Google - Original.png',
                      ),
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
                            color: mypink),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Screen_Welcome_back(),
                            )))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  conformpassword(
      {required var password,
      required var conformpassword1,
      required BuildContext context}) {
    if (password == conformpassword1) {
      FirebaseAuth.instance
          .createUserWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) {
        var snackBar = SnackBar(
          elevation: 0,
          behavior: SnackBarBehavior.floating,
          backgroundColor: Color.fromARGB(0, 0, 0, 0),
          content: AwesomeSnackbarContent(
            color: green,
            title: 'Successfull!',
            message: 'your Varification successfully created',
            contentType: ContentType.failure,
          ),
        );
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(snackBar);
        // var smackbar = SnackBar(content: Text("success"));
        // ScaffoldMessenger.of(context).showSnackBar(smackbar);
        log(1);
        print("creted new sign up");
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Screen_Profile_complete(),
            ));
      }).catchError(
        (e) {
          print(e.toString());
          // var splitted = e.toString();
          // final next = splitted.split();
          // final neew = next[1];
          var snackBar = SnackBar(
            /// need to set following properties for best effect of awesome_snackbar_content
            elevation: 0,
            behavior: SnackBarBehavior.floating,
            backgroundColor: Colors.transparent,

            content: AwesomeSnackbarContent(
              title: 'Alert!',

              message: e.toString(),

              /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
              contentType: ContentType.failure,
            ),
          );
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(snackBar);
        },
      );
    } else {
      var snackBar = SnackBar(
        /// need to set following properties for best effect of awesome_snackbar_content
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,

        content: AwesomeSnackbarContent(
          color: grey,
          title: 'Alert!',

          message: "password and ConformPassword Does't match",

          /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
          contentType: ContentType.failure,
        ),
      );
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(snackBar);
      print("password and conformPasseord does't match");
    }
  }
}
