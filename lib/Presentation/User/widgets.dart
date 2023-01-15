import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';

import '../../Core/Text.dart';

NormaliconText(
    {required String text, required IconData iconshape,}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            iconshape,
            size: 24,
          ),
        ),
        Normaltext(
          text: text,
          size: 13,
          weight: FontWeight.w500,
        )
      ],
    ),
  );
}
