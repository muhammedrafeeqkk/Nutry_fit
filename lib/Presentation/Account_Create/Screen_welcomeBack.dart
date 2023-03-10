import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_Create.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashD/Screen_welcom.dart';
import 'package:nutry_fit/Services/firebaseServices.dart';

import '../../Core/Sizedbox.dart';
import '../../Core/Text.dart';

class Screen_Welcome_back extends StatelessWidget {
  Screen_Welcome_back({Key? key}) : super(key: key);
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                sizzbox(screenheight, 0.06),
                Text('Hey there,'),
                heading(heading: 'Welcome back'),
                sizzbox(screenheight, 0.04),
                textField(
                    hinttexxt: 'email',
                    PrefixxIcon: Icons.email,
                    controller: _emailController),
                textFieldwithsufixIcon(
                    hinttexxt: 'Password',
                    PrefixxIcon: Icons.lock_outlined,
                    controller: _passwordController),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Colortext(
                      color: grey,
                      text: 'forget your password?',
                      size: 10,
                      weight: FontWeight.w500),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 23),
                  child: InkWell(
                      child: getStartedButton(texxt: 'Login'),
                      onTap: () {
                        FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text)
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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Screen_welcome(),
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
                      }),
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
                              builder: (context) => Screen_welcome(),
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
                        text: "Don't have an account yet?",
                        size: 13,
                        weight: FontWeight.w400),
                    InkWell(
                      child: Colortext(
                          text: 'Create now',
                          size: 12,
                          weight: FontWeight.w800,
                          color: mypink),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen_account_create(),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
