import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/Screen_page3.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/widgets/Widgets.dart';

import 'Screen_page1.dart';

class Screen_Description2 extends StatelessWidget {
  const Screen_Description2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Screen_description(
            context: context,
            CustomClipper: CustomShapeClass2(),
            headingg: 'Go Brun',
            description1:
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Nunc vulputate libero et velit \ninterdum, ac aliquet odio mattis.',
            navigatToPageName: Screen_Description3()));
  }
}

class CustomShapeClass2 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 3);
    var firstEndPoint = new Offset(size.width / 4, size.height / 2);
    // var secondControlPoint =
    //     new Offset(size.width - (size.width / 4), size.height / 2 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 6 - 40);
    path.quadraticBezierTo(firstControlPoint.dy, firstControlPoint.dx,
        firstEndPoint.dy, firstEndPoint.dy);
    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);
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
