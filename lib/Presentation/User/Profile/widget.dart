import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/colors.dart';

navigationIcon({required navigatePage}) {
  return Container(
    child: IconButton(
        onPressed: (() => navigatePage),
        icon: Icon(Icons.arrow_back_ios_rounded)),
    decoration: BoxDecoration(
        color: greyHardLite, borderRadius: BorderRadius.circular(8)),
    height: 40,
    width: 40,
  );
}
