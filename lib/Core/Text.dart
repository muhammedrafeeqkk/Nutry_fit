import 'package:flutter/cupertino.dart';

Normaltext(
    {required String text, required double size, required FontWeight weight}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: weight),
  );
}

Colortext(
    {required String text,
    required double size,
    required FontWeight weight,
    required Color? color}) {
  return Text(
    text,
    style: TextStyle(fontSize: size, fontWeight: weight, color: color),
  );
}

heading({required String heading}) {
  return Normaltext(text: heading, size: 17, weight: FontWeight.w600);
}
