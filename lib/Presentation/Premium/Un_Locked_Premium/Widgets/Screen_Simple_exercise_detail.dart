import 'package:flutter/material.dart';

import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Widgets/widgets.dart';
import 'dart:async';

import '../../../../Core/Text.dart';

class Screen_exercise_details extends StatefulWidget {
  const Screen_exercise_details({
    Key? key,
    required this.imagePath,
    required this.exerciseName,
    required this.describe,
    required this.direction1,
    required this.direction2,
    required this.direction3,
   
  }) : super(key: key);

  final String imagePath;
  final String exerciseName;
  final String describe;
  final String direction1;
  final String direction2;
  final String direction3;
  

  @override
  State<Screen_exercise_details> createState() =>
      _Screen_exercise_detailsState();
}

class _Screen_exercise_detailsState extends State<Screen_exercise_details> {
  static const maxSecods = 60;
  int seconds = maxSecods;

  Timer? timer;
  void resetTime() => setState(() => seconds = maxSecods);

  void startTime({bool reset = true}) {
    if (reset) {
      resetTime();
    }
    timer = Timer.periodic(
      Duration(seconds: 1),
      (_) {
        if (seconds > 0) {
          setState(() {
            seconds--;
          });
        } else {
          stopTime();
        }
      },
    );
  }

  void stopTime({bool reset = true}) {
    if (reset) {
      resetTime();
    }
    setState(() {
      timer?.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    final iscompleted = seconds == 0;
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizzbox(screenheight, 0.028),
              exerciseImageContainer(
                  screenwidth: screenwidth,
                  context: context,
                  screenheight: screenheight,
                  imagePath: widget.imagePath,
                  exerciseName: widget.exerciseName),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    iscompleted
                        ? SizedBox(
                            width: 130,
                            height: 130,
                            child: Stack(fit: StackFit.expand, children: const [
                              CircularProgressIndicator(
                                strokeWidth: 12,
                                backgroundColor: green,
                              ),
                              Center(
                                  child: Icon(
                                Icons.face,
                                size: 80,
                                color: green,
                              ))
                            ]))
                        : SizedBox(
                            width: 100,
                            height: 100,
                            child: Stack(fit: StackFit.expand, children: [
                              CircularProgressIndicator(
                                  valueColor: AlwaysStoppedAnimation(greyLite),
                                  strokeWidth: 12,
                                  backgroundColor: green,
                                  value: seconds / maxSecods),
                              Center(child: buildtime())
                            ])),
                    Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: buildButton(),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Colortext(
                    text: widget.describe,
                    size: 12,
                    weight: FontWeight.w400,
                    color: grey),
              ),
              sizzbox(screenheight, 0.02),
              Colortext(
                  text: 'Directions:',
                  size: 12,
                  weight: FontWeight.w400,
                  color: grey),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Colortext(
                        text: widget.direction1,
                        size: 12,
                        weight: FontWeight.w400,
                        color: grey),
                    sizzbox(screenheight, 0.02),
                    Colortext(
                        text: widget.direction2,
                        size: 12,
                        weight: FontWeight.w400,
                        color: grey),
                    sizzbox(screenheight, 0.02),
                    Colortext(
                        text: widget.direction3,
                        size: 12,
                        weight: FontWeight.w400,
                        color: grey),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButton() {
    final isRunning = timer == null ? false : timer!.isActive;
    final iscompleted = seconds == 0;
    return isRunning || iscompleted
        ? TextButton(
            onPressed: stopTime,
            child: Colortext(
                text: 'Cancel',
                size: 15,
                weight: FontWeight.w500,
                color: black))
        : TextButton(
            onPressed: () {
              startTime();
            },
            child: Colortext(
                text: 'Start',
                size: 15,
                weight: FontWeight.w500,
                color: black));
  }

  Widget buildtime() {
    return Colortext(
        text: '$seconds', size: 35, weight: FontWeight.w600, color: grey);
  }
}


// ElevatedButton(
              //   onPressed: (() {
              //     stopTime();
              //   }),
              //   child: Text('pause'),
              // ),