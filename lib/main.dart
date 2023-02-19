import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/presentation/Splash_Screens/splashB/Screen_splash_A1.dart';

import 'Presentation/Main_page/Screen-Mainpages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nutry Fit',
      theme: ThemeData(
        fontFamily: "Poppins",
        primarySwatch: Colors.blue,
      ),
      home: const Screen_Splash_A1(),
      //home: Screen_MainPage(),
    );
  }
}
