import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nutry_fit/Presentation/Account_Create/widgets.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/Screen_page4.dart';
import 'package:nutry_fit/Presentation/Splash_Screens/splashC/widgets/Widgets.dart';

class Screen_Description3 extends StatelessWidget {
  const Screen_Description3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Screen_description(
            context: context,
            CustomClipper: CustomShapeClass3(),
            headingg: 'Eat Well',
            description1:
                'Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Nunc vulputate libero et velit \ninterdum, ac aliquet odio mattis.',
            navigatToPageName: Screen_Description4()));
  }
}

class CustomShapeClass3 extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.lineTo(0, size.height / 4.25);
    var firstControlPoint = new Offset(size.width / 4, size.height / 2); //3
    var firstEndPoint = new Offset(size.width / 2, size.height / 3 - 60);
    var secondControlPoint =
        new Offset(size.width - (size.width / 4), size.height / 4 - 65);
    var secondEndPoint = new Offset(size.width, size.height / 3 - 40);
    path.quadraticBezierTo(firstControlPoint.dy, firstControlPoint.dx,
        firstEndPoint.dy, firstEndPoint.dy);
    path.quadraticBezierTo(secondControlPoint.dy, secondControlPoint.dx,
        secondEndPoint.dx, secondEndPoint.dx);
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
