import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Core/colors.dart';

import 'package:flutter/cupertino.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/Screen_page2.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/widgets/Widgets.dart';
import 'package:nutry_fit/presentation/Splash_Screens/splashA/splash1.dart';

class CustomShapeClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height / 3);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}

class Screen_Description1 extends StatelessWidget {
  const Screen_Description1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Screen_description(
          context: context,
          CustomClipper: CustomShapeClass(),
          headingg: 'Track Your Goals',
          description1:
              'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Nunc vulputate libero et velit \ninterdum, ac aliquet odio mattis.',
          navigatToPageName: Screen_Description2()),
    );
  }
}
