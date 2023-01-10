import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Core/images.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashB/widgets/widget.dart';

class Screen_Splash_A1 extends StatelessWidget {
  const Screen_Splash_A1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NutryFitGetStart(context));
  }
}
