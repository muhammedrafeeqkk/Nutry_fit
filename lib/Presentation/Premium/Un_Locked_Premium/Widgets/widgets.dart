import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nutry_fit/Core/Sizedbox.dart';
import 'package:nutry_fit/Core/colors.dart';
import 'package:nutry_fit/Presentation/Premium/Un_Locked_Premium/Widgets/Screen_Simple_exercise_detail.dart';

import '../../../../Core/Text.dart';

iconcolorText({required String text, required IconData iconshape}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 2),
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(
            iconshape,
            color: green,
            size: 24,
          ),
        ),
        Colortext(text: text, size: 12, weight: FontWeight.w500, color: grey)
      ],
    ),
  );
}

Container CustomerServiceButton({required String texxt, required gradient}) {
  return Container(
    decoration: BoxDecoration(
      gradient: gradient,
      borderRadius: BorderRadius.circular(15),
    ),
    width: 342,
    height: 48,
    child: Center(
      child: Text(
        texxt,
        style:
            TextStyle(fontWeight: FontWeight.w600, color: white, fontSize: 10),
      ),
    ),
  );
}

Widget ExerciseFieldContainer(
    {required screenwidth,
    required exerciseType,
    required context,
    required showmodelitem}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 11),
    child: Container(
      height: screenwidth * 0.11,
      width: screenwidth,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: greyLite),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Colortext(
              text: exerciseType,
              size: 12,
              weight: FontWeight.w400,
              color: grey),
        ),
        IconButton(
            onPressed: () => showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                  )),
                  context: context,
                  builder: (context) => showmodelitem,
                ),
            icon: Icon(Icons.arrow_drop_down))
      ]),
    ),
  );
}

dietItemsRow(
    {required double screenheight,
    required String timeText1,
    required String timeText2,
    required String timeInt1,
    required String timeInt2}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 13),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        DietItemsButton(
            texxt: timeText1, timeText: timeInt1, screenheight: screenheight),
        DietItemsButton(
            texxt: timeText2, timeText: timeInt2, screenheight: screenheight)
      ],
    ),
  );
}

Container DietItemsButton(
    {required String texxt, required String timeText, required screenheight}) {
  return Container(
    decoration: BoxDecoration(
      gradient: GreenWithBlueGradientcolor,
      borderRadius: BorderRadius.circular(12),
    ),
    width: 120,
    height: 50,
    child: Center(
      child: Column(
        children: [
          sizzbox(screenheight, 0.008),
          Text(
            texxt,
            style: TextStyle(
                fontWeight: FontWeight.w500, color: white, fontSize: 13),
          ),
          Text(
            timeText,
            style: TextStyle(
                fontWeight: FontWeight.w400, color: white, fontSize: 13),
          ),
        ],
      ),
    ),
  );
}

exerciseImageContainer(
    {required double screenwidth,
    required BuildContext context,
    required double screenheight,
    required String imagePath,
    required String exerciseName}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
    child: Stack(
      children: [
        Container(
          width: screenwidth * 0.89,
          height: screenheight * 0.25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover)),
        ),
        Positioned(
          top: screenheight * 0.185,
          child: Container(
              height: screenheight * 0.065,
              width: screenwidth * 0.89,
              decoration: BoxDecoration(
                gradient: goldOpacityGradientcolor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    bottomRight: Radius.circular(18)),
              ),
              child: Center(
                child: Colortext(
                    text: exerciseName,
                    size: 16,
                    weight: FontWeight.w500,
                    color: white),
              )),
        ),
      ],
    ),
  );
}

InkWell inkwellExerciseImageContainer(
    {required BuildContext context,
    required double screenheight,
    required double screenwidth,
    required String exerciseName,
    required String describe,
     required String direction1,
  required String direction2,
  required String direction3,
 
    required String imagePath}) {
  return InkWell(
      child: exerciseImageContainer(
          context: context,
          screenheight: screenheight,
          screenwidth: screenwidth,
          exerciseName: exerciseName,
          imagePath: imagePath),
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Screen_exercise_details(
                describe:describe,
                direction1:
                  direction1,
                direction2:
                    direction2,
                direction3:
                
                direction3,
                    
                imagePath: imagePath,
                exerciseName: exerciseName),
          )));
}
