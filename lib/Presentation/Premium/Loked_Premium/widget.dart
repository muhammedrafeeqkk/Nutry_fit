import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Loked_Premium/Screen_Payment.dart';

import '../../../Core/Text.dart';

Widget priceButton({required screenwidth, required context ,
    required double screenheight,
    required String imagePath,
    required String diseasName}) {
  return InkWell(
    onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Screen_Payment(diseasName:diseasName,imagePath: imagePath,screenheight: screenheight,screenwidth:screenwidth , ),
        )),
    child: Container(
      decoration: BoxDecoration(
        gradient: g2oldGradientcolor,
        borderRadius: BorderRadius.circular(30),
      ),
      width: screenwidth,
      height: 45,
      child: Padding(
        padding: EdgeInsets.only(left: screenwidth * 0.4),
        child: Row(
          children: [
          const  Icon(
              Icons.lock_open_rounded,
              color: green,
            ),
            Colortext(
                text: '₹999/-',
                size: 18,
                weight: FontWeight.w600,
                color: Colors.red)
          ],
        ),
      ),
    ),
  );
}

deseaseCountainerWithImage(
    {required double screenwidth,
    required double screenheight,
    required String imagePath,
    required String diseasName}) {
  return Container(
    width: screenwidth,
    height: screenheight * 0.22,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill)),
    child: Center(
        child: Text(
      diseasName,
      style: TextStyle(
          color: Colors.black.withOpacity(.6),
          fontSize: 40,
          fontWeight: FontWeight.w600),
    )),
  );
}
