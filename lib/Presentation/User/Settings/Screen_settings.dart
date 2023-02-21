import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_Create.dart';
import 'package:nutry_fit/Presentation/Account_Create/Screen_welcomeBack.dart';
import 'package:nutry_fit/Services/firebaseServices.dart';

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
                  onTap: () async {
                    FirebaseAuth.instance.signOut();
                    await firebaseServices().signOutWithGoogle();
                    var snackBar1 = SnackBar(
                      elevation: 0,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                      content: AwesomeSnackbarContent(
                        title: 'Alert!',
                        message: 'account Logout',
                        contentType: ContentType.failure,
                      ),
                    );
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar1);

                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen_Welcome_back(),
                        ),
                        (route) => false);

                    // FirebaseAuth.instance.signOut().then((value) {
                    //   print("signed out");
                    // Navigator.pushAndRemoveUntil(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => Screen_Welcome_back(),
                    //     ),
                    //     (route) => false);
                    // });
                  }),
              InkWell(
                  child: NormaliconText(
                      text: 'Delete Account', iconshape: Icons.delete),
                  onTap: () async {
                    await FirebaseAuth.instance.currentUser!.delete();
                    var snackBar1 = SnackBar(
                      elevation: 0,
                      behavior: SnackBarBehavior.floating,
                      backgroundColor: Color.fromARGB(0, 0, 0, 0),
                      content: AwesomeSnackbarContent(
                        title: 'Alert!',
                        message: 'your account deleted',
                        contentType: ContentType.failure,
                      ),
                    );
                    ScaffoldMessenger.of(context)
                      ..hideCurrentSnackBar()
                      ..showSnackBar(snackBar1);
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Screen_account_create(),
                        ),
                        (route) => false).catchError(
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
